part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _init();

  // serviceLocator.registerLazySingleton(() => AppUserCubit());
  serviceLocator.registerFactory(() => InternetConnection());
  serviceLocator.registerFactory<ConnectionChecker>(
      () => ConnectionCheckerImpl(serviceLocator()));
  _initProject();
}

void _init() {
  // Register NetworkClient with Dio or Http
  late bool useDio = false;

  if (useDio) {
    serviceLocator.registerLazySingleton<NetworkClient>(
        () => DioNetworkClient(baseUrl: 'https://api.example.com'));
  } else {
    serviceLocator.registerLazySingleton<NetworkClient>(
        () => HttpNetworkClient(baseUrl: 'https://api.example.com'));
  }
}

void _initProject() async {
  // Register Remote Data Source
  serviceLocator.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(serviceLocator()));

  // Register Local Data Source
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(sharedPreferences));

  // Register Repository
  serviceLocator
      .registerLazySingleton<DashboardRepository>(() => DashboardRepositoryImpl(
            remoteDataSource: serviceLocator(),
            localDataSource: serviceLocator(),
          ));

  // Register Use Case
  serviceLocator
      .registerLazySingleton(() => FetchDataUseCase(serviceLocator()));

  // Register BLoC
  serviceLocator.registerFactory(() => DashboardBloc(serviceLocator()));
}
