import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_forecast/feature/weather/data/datasource/weather_local_datasource.dart';
import 'package:weather_forecast/feature/weather/data/models/weather_model.dart';

import 'weather_local_datasource_test.mocks.dart';

@GenerateMocks([HiveInterface, Box])
void main() {
  late IWeatherLocalDatasource datasource;
  late MockHiveInterface mockHiveInterface;
  late MockBox mockBox;

  const String weatherBox = 'weatherBox';
  const String cachedWeatherKey = 'cachedWeather';
  const weatherData = {
    "temperature": 25,
    "condition": "Sunny",
  };

  setUp(() {
    mockHiveInterface = MockHiveInterface();
    mockBox = MockBox();
    datasource = IWeatherLocalDatasource(mockHiveInterface);
  });

  group('cacheWeather', () {
    final WeatherModel weatherModel = WeatherModel.fromMap(weatherData);

    test('should cache the weather data in Hive', () async {
      when(mockHiveInterface.openBox(any)).thenAnswer((_) async => mockBox);

      await datasource.cacheWeather(weatherModel);

      verify(mockHiveInterface.openBox(weatherBox)).called(1);
      verify(mockBox.put(cachedWeatherKey, weatherModel.toMap())).called(1);
      verify(mockBox.close()).called(1);
    });
  });

  group('getLastWeather', () {
    test('should return WeatherModel when there is cached data', () async {
      when(mockHiveInterface.openBox(any)).thenAnswer((_) async => mockBox);
      when(mockBox.get(cachedWeatherKey)).thenReturn(weatherData);

      final result = await datasource.getLastWeather();

      verify(mockHiveInterface.openBox(weatherBox)).called(1);
      verify(mockBox.get(cachedWeatherKey)).called(1);
      verify(mockBox.close()).called(1);
      expect(result, WeatherModel.fromMap(weatherData));
    });

    // test('should throw CacheException when there is no cached data', () async {
    //   when(mockHiveInterface.openBox(any)).thenAnswer((_) async => mockBox);
    //   when(mockBox.get(cachedWeatherKey)).thenReturn(null);

    //   final call = datasource.getLastWeather;

    //   expect(() => call(), throwsA(isA<CacheException>()));
    //   verify(mockHiveInterface.openBox(weatherBox)).called(1);
    //   verify(mockBox.get(cachedWeatherKey)).called(1);
    //   verify(mockBox.close()).called(1);
    // });
  });
}
