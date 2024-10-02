import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_forecast/core/error/failure.dart';
import 'package:weather_forecast/feature/weather/domain/entities/weather_entity.dart';
import 'package:weather_forecast/feature/weather/domain/usecases/weather_info_usecase.dart';
import 'package:weather_forecast/feature/weather/presentation/bloc/get_weather_bloc/get_weather_bloc.dart';

class MockWeatherInfoUsecase extends Mock implements WeatherInfoUsecase {}

void main() {
  late GetWeatherBloc getWeatherBloc;
  late MockWeatherInfoUsecase mockWeatherInfoUsecase;

  setUp(() {
    mockWeatherInfoUsecase = MockWeatherInfoUsecase();
    getWeatherBloc = GetWeatherBloc(weatherInfoUsecase: mockWeatherInfoUsecase);
  });

  const tCityName = 'London';
  final tWeatherEntity = WeatherEntity();
  final tParams = Params(cityName: tCityName);

  group('GetWeatherBloc', () {
    test('initial state should be GetWeatherState.initial', () {
      expect(getWeatherBloc.state, equals(const GetWeatherState.initial()));
    });

    blocTest<GetWeatherBloc, GetWeatherState>(
      'should emit [loading, getWeather] when data is gotten successfully',
      build: () {
        when(() => mockWeatherInfoUsecase.call(tParams))
            .thenAnswer((_) async => Right(tWeatherEntity));
        return getWeatherBloc;
      },
      act: (bloc) => bloc.add(const GetWeatherDetailsEvent(tCityName)),
      expect: () => [
        const GetWeatherState.loading(),
        GetWeatherState.getWeather(tWeatherEntity),
      ],
      verify: (_) {
        verify(() => mockWeatherInfoUsecase.call(tParams)).called(1);
      },
    );

    blocTest<GetWeatherBloc, GetWeatherState>(
      'should emit [loading, error] when getting data fails',
      build: () {
        when(() => mockWeatherInfoUsecase.call(tParams)).thenAnswer(
            (_) async => Left(Failure.serverFailure('Server Error')));
        return getWeatherBloc;
      },
      act: (bloc) => bloc.add(const GetWeatherDetailsEvent(tCityName)),
      expect: () => [
        const GetWeatherState.loading(),
        const GetWeatherState.error('Server Error'),
      ],
      verify: (_) {
        verify(() => mockWeatherInfoUsecase.call(tParams)).called(1);
      },
    );
  });
}
