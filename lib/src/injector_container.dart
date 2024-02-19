import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/domain/repositories/agents/agents_repository.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agents_bloc.dart';

import 'config/router/app_routes.dart';

import 'core/platform/network_info.dart';
import 'data/source/local_source.dart';
import 'presentation/bloc/main_bloc/main_bloc.dart';
import 'presentation/bloc/splash_bloc/splash_bloc.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  /// External
  await initHive();

  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
          contentType: 'application/json',
          sendTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          connectTimeout: const Duration(seconds: 30),
          baseUrl: Constants.baseUrl)
      ..interceptors.addAll(
        [
          LogInterceptor(
            requestBody: kDebugMode,
            responseBody: kDebugMode,
            logPrint: (object) =>
                kDebugMode ? log('dio: ${object.toString()}') : null,
          ),
          if (kDebugMode) chuck.getDioInterceptor(),
        ],
      ),
  );
  sl<Dio>().interceptors.add(
        RetryInterceptor(
          dio: sl<Dio>(),
          toNoInternetPageNavigator: () async => Navigator.pushNamed(
            rootNavigatorKey.currentContext!,
            Routes.internetConnection,
          ),
          logPrint: (String message) {},
        ),
      );

  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// main
  mainFeature();
  agentsFeature();
}

void mainFeature() {
  /// splash
  sl
    ..registerFactory(SplashBloc.new)
    ..registerLazySingleton(MainBloc.new);
}

void agentsFeature() {
  sl
    ..registerFactory<AgentsBloc>(
      () => AgentsBloc(sl()),
    )
    ..registerLazySingleton<AgentsRepository>(
      () => AgentsRepositoryImpl(dio: sl()),
    );
}

Future<void> initHive() async {
  const boxName = 'bloc_mobile_box';
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
