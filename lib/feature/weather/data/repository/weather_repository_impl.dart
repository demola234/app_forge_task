import 'package:dartz/dartz.dart';
import 'package:weather_forecast/core/error/error.dart';
import 'package:weather_forecast/core/error/failure.dart';
import 'package:weather_forecast/core/network/network_info/network_info.dart';
import 'package:weather_forecast/feature/weather/data/datasource/weather_local_datasource.dart';
import 'package:weather_forecast/feature/weather/data/datasource/weather_remote_datasource.dart';
import 'package:weather_forecast/feature/weather/data/models/weather_model.dart';
import 'package:weather_forecast/feature/weather/domain/entities/weather_entity.dart';
import 'package:weather_forecast/feature/weather/domain/repository/weather_repository.dart';

typedef _GetWeather = Future<WeatherModel> Function();

class IWeatherRepository implements WeatherRepository {
  final WeatherRemoteDatasource remoteDataSource;
  final WeatherLocalDatasource localDataSource;
  final NetworkInfo networkInfo;

  IWeatherRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, WeatherEntity>> getWeather(String cityName) async {
    return await _getWeather(() => remoteDataSource.getWeather(cityName));
  }

  Future<Either<Failure, WeatherEntity>> _getWeather(
      _GetWeather getWeather) async {
    // if (await networkInfo.isConnected) {
    try {
      final remoteWeather = await getWeather();

      final weatherEntity = remoteWeather.toEntity();
      // localDataSource.cacheWeather(remoteWeather);
      return Right(weatherEntity);
    } on ServerException catch (exception) {
      return Left(Failure.serverFailure(exception.message!));
    }
  }
  // else {
  //   try {
  //     final localWeather = await localDataSource.getLastWeather();
  //     return Right(localWeather.toEntity());
  //   } on CacheException catch (exception) {
  //     return Left(Failure.cacheFailure(exception.message!));
  //   }
  // }
  // }
}
