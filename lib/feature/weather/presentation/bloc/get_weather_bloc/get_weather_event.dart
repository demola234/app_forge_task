part of 'get_weather_bloc.dart';

@freezed
class GetWeatherEvent with _$GetWeatherEvent {
  const factory GetWeatherEvent.getWeather(String cityName) = GetWeatherDetailsEvent;
}
