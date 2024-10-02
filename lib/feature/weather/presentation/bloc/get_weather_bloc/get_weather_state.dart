part of 'get_weather_bloc.dart';

@freezed
class GetWeatherState with _$GetWeatherState {
  const factory GetWeatherState.initial() = _Initial;
  const factory GetWeatherState.loading() = _Loading;
  const factory GetWeatherState.getWeather(WeatherEntity weatherEntity) =
      _GetWeather;
  const factory GetWeatherState.error(String error) = _Error;
}
