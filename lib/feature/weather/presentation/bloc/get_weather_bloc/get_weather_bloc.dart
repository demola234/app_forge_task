import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/feature/weather/domain/entities/weather_entity.dart';
import 'package:weather_forecast/feature/weather/domain/usecases/weather_info_usecase.dart';

part 'get_weather_bloc.freezed.dart';
part 'get_weather_event.dart';
part 'get_weather_state.dart';

class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  final WeatherInfoUsecase weatherInfoUsecase;
  GetWeatherBloc({
    required this.weatherInfoUsecase,
  }) : super(const GetWeatherState.initial()) {
    on<GetWeatherDetailsEvent>(_getWeatherDetailsEvent);
  }
  Future<void> _getWeatherDetailsEvent(
      GetWeatherDetailsEvent event, Emitter<GetWeatherState> emit) async {
    emit(const GetWeatherState.loading());
    final failureOrSuccess =
        await weatherInfoUsecase.call(Params(cityName: event.cityName));
    failureOrSuccess.fold((failure) {
      emit(GetWeatherState.error(failure.message));
    }, (success) {
      emit(GetWeatherState.getWeather(success));
    });
  }
}
