import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_forecast/core/error/failure.dart';
import 'package:weather_forecast/feature/weather/domain/entities/weather_entity.dart';
import 'package:weather_forecast/feature/weather/domain/repository/weather_repository.dart';

import '../../../../core/usecases/usecases.dart';

class WeatherInfoUsecase implements UseCase<WeatherEntity, Params> {
  final WeatherRepository weatherRepository;

  WeatherInfoUsecase(this.weatherRepository);

  @override
  Future<Either<Failure, WeatherEntity>> call(Params params) async {
    return await weatherRepository.getWeather(params.cityName);
  }
}

class Params extends Equatable {
  final String cityName;
  const Params({
    required this.cityName,
  });

  @override
  List<Object> get props => [cityName];
}
