import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/feature/weather/domain/usecases/weather_info_usecase.dart';
import 'package:weather_forecast/feature/weather/presentation/bloc/get_weather_bloc/get_weather_bloc.dart';
import 'package:weather_forecast/injector_container.dart';

class AppProvider {
  static List<BlocProvider> getList() {
    return [
      BlocProvider<GetWeatherBloc>(
        create: (context) => GetWeatherBloc(
          weatherInfoUsecase: appInjector<WeatherInfoUsecase>(),
        ),
      ),
    ];
  }
}
