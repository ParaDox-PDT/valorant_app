import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/domain/repositories/agents/agents_repository.dart';
import 'package:valorant_app/src/domain/repositories/ranks/ranks_repository.dart';
import 'package:valorant_app/src/domain/repositories/sprays/sprays_repository.dart';
import 'package:valorant_app/src/domain/repositories/weapons/weapons_repository.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agent_detail_bloc/agent_detail_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agents_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/ranks_bloc/ranks_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/sprays_bloc/sprays_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapon_detail_bloc/weapon_detail_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapons_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/video_player_bloc/video_player_bloc.dart';
import 'package:valorant_app/src/presentation/components/cupertino_back/cupertino_back_gesture.dart';
import 'package:valorant_app/src/presentation/pages/internet_connection/internet_connection_part.dart';

import 'config/router/app_routes.dart';

import 'core/platform/network_info.dart';
import 'data/source/local_source.dart';
import 'presentation/bloc/main_bloc/main_bloc.dart';
import 'presentation/bloc/matrix4_bloc/matrix4_bloc.dart';
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
          sendTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          connectTimeout: const Duration(seconds: 15),
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
          toNoInternetPageNavigator: () async {
            if (Platform.isAndroid) {
              await Navigator.push(
                rootNavigatorKey.currentContext!,
                MaterialPageRoute(
                  builder: (context) => const InternetConnectionPage(),
                ),
              );
            } else {
              await Navigator.push(
                rootNavigatorKey.currentContext!,
                CupertinoPageRoute(
                  builder: (context) => const InternetConnectionPage(),
                ),
              );
            }
          },
          logPrint: (String message) {
            debugPrint('Connection error:$message');
          },
        ),
      );

  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerLazySingleton(InternetConnectionChecker.new)
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// main
  mainFeature();

  /// agents
  agentsFeature();
  agentDetailFeature();

  /// weapons
  weaponsFeature();
  weaponDetailFeature();

  /// ranks
  ranksFeature();

  /// sprays
  spraysFeature();

  /// video player
  videoPlayerFeature();
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
      () => AgentsBloc(sl(), sl()),
    )
    ..registerLazySingleton<AgentsRepository>(
      () => AgentsRepositoryImpl(dio: sl()),
    );
}

void agentDetailFeature() {
  sl.registerFactory<AgentDetailBloc>(
      () => AgentDetailBloc(agentsRepository: sl()));
}

void weaponsFeature() {
  sl
    ..registerFactory<WeaponsBloc>(() => WeaponsBloc(sl(), sl()))
    ..registerLazySingleton<WeaponsRepository>(
        () => WeaponsRepositoryImpl(dio: sl()));
}

void weaponDetailFeature() {
  sl.registerFactory<WeaponDetailBloc>(
      () => WeaponDetailBloc(weaponsRepository: sl(), networkInfo: sl()));
}

void ranksFeature() {
  sl
    ..registerFactory<RanksBloc>(
        () => RanksBloc(ranksRepository: sl(), networkInfo: sl()))
    ..registerLazySingleton<RanksRepository>(
      () => RanksRepositoryImpl(dio: sl()),
    );
}

void spraysFeature() {
  sl
    ..registerFactory<SpraysBloc>(
        () => SpraysBloc(spraysRepository: sl(), networkInfo: sl()))
    ..registerLazySingleton<SpraysRepository>(
      () => SpraysRepositoryImpl(dio: sl()),
    );
}

void matrix4Feature() {
  sl.registerFactory<Matrix4Bloc>(Matrix4Bloc.new);
}

void videoPlayerFeature() {
  sl.registerFactory<VideoPlayerBloc>(VideoPlayerBloc.new);
}

Future<void> initHive() async {
  const boxName = 'bloc_mobile_box';
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
