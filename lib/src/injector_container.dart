part of 'injector_container_part.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  /// External
  await initHive();

  /// File Downloader initialize
  await FlutterDownloader.initialize(
    debug: kDebugMode,
    ignoreSsl: true,
  );

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

  /// player cards
  playerCardsFeature();

  /// maps
  mapsFeature();

  /// map detail
  mapDetailFeature();

  /// wallpapers detail
  wallpapersFeature();

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

void playerCardsFeature() {
  sl
    ..registerFactory<PlayerCardsBloc>(
        () => PlayerCardsBloc(playerCardsRepository: sl(), networkInfo: sl()))
    ..registerLazySingleton<PlayerCardsRepository>(
      () => PlayerCardsRepositoryImpl(dio: sl()),
    );
}

void mapsFeature() {
  sl
    ..registerFactory<MapBloc>(
        () => MapBloc(mapsRepository: sl(), networkInfo: sl()))
    ..registerLazySingleton<MapsRepository>(
      () => MapsRepositoryImpl(dio: sl()),
    );
}

void wallpapersFeature() {
  sl
    ..registerFactory<WallpapersBloc>(
        () => WallpapersBloc(wallpapersRepository: sl(), networkInfo: sl()))
    ..registerLazySingleton<WallpapersRepository>(
      WallpapersRepositoryImpl.new,
    );
}

void mapDetailFeature() {
  sl.registerFactory<MapDetailBloc>(
      () => MapDetailBloc(mapsRepository: sl(), networkInfo: sl()));
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
