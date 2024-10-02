import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:weather_forecast/core/network/api_configs/network_config.dart';
import 'package:weather_forecast/core/network/network_info/network_info.dart';
import 'package:weather_forecast/feature/weather/data/datasource/weather_local_datasource.dart';
import 'package:weather_forecast/feature/weather/data/datasource/weather_remote_datasource.dart';
import 'package:weather_forecast/feature/weather/data/repository/weather_repository_impl.dart';
import 'package:weather_forecast/feature/weather/domain/repository/weather_repository.dart';
import 'package:weather_forecast/feature/weather/domain/usecases/weather_info_usecase.dart';

final appInjector = GetIt.I;

Future<void> injector() async {
  appInjector
    // Repository
    ..registerLazySingleton<WeatherRepository>(
      () => IWeatherRepository(
        remoteDataSource: appInjector(),
        localDataSource: appInjector(),
        networkInfo: appInjector(),
      ),
    )

    // UseCase
    ..registerLazySingleton<WeatherInfoUsecase>(
      () => WeatherInfoUsecase(appInjector()),
    )

    // Dio
    ..registerLazySingleton<Dio>(() => Dio())

    // NetworkProviderImpl
    ..registerLazySingleton<NetworkProvider>(NetworkProviderImpl.new)

    // DataSources
    ..registerLazySingleton<WeatherRemoteDatasource>(
      () => IWeatherRemoteDatasource(
        client: appInjector(),
      ),
    )

    // HiveInterface
    ..registerSingleton<HiveInterface>(Hive)

    // Local DataSource
    ..registerLazySingleton<WeatherLocalDatasource>(
      () => IWeatherLocalDatasource(appInjector()),
    )

    // Network Info
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()),
    );
}
