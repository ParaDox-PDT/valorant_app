import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

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
        headers: {
          'Authorization': 'API-KEY',
          'X-API-KEY': Constants.apiKey,
          'Resource-Id': Constants.resourceId,
          'Environment-Id': Constants.environmentId,
        },
      )
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
      accessTokenGetter: () => localSource.accessToken,
      refreshTokenFunction: () async {
        await localSource.userClear();
        await Navigator.pushNamedAndRemoveUntil(
          rootNavigatorKey.currentContext!,
          Routes.initial,
              (route) => false,
        );
      }, logPrint: (String message) {  },
    ),
  );

  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// main
  mainFeature();
  homeFeature();

}

void mainFeature() {
  /// splash
  // sl
  //   ..registerFactory(SplashBloc.new)
  //   ..registerLazySingleton(MainBloc.new);
}

void homeFeature() {
  // sl.registerFactory<HomeBloc>(HomeBloc.new);
}

Future<void> initHive() async {
  const boxName = 'bloc_mobile_box';
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
