import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_forecast/core/network/api_configs/network_config.dart';
import 'package:weather_forecast/core/network/endpoint_manager/endpoint_manager.dart';
import 'package:weather_forecast/feature/weather/data/datasource/weather_remote_datasource.dart';
import 'package:weather_forecast/feature/weather/data/models/weather_model.dart';

class MockNetworkProvider extends Mock implements NetworkProvider {}

void main() {
  late MockNetworkProvider mockNetworkProvider;
  late IWeatherRemoteDatasource weatherRemoteDatasource;
  late String tCityName;
  late Map<String, dynamic> weatherData;

  setUp(() async {
    dotenv.testLoad(fileInput: '''
      BASE_URL=https:
      API_KEY=test-api-key
    ''');

    mockNetworkProvider = MockNetworkProvider();
    weatherRemoteDatasource =
        IWeatherRemoteDatasource(client: mockNetworkProvider);
    tCityName = "London";
    weatherData = {
      "temperature": 25,
      "condition": "Sunny",
    };
  });

  void setUpMockHttpManagerSuccess() {
    when(() => mockNetworkProvider.call(
        path: EndpointManager.getWeatherUrl,
        method: RequestMethod.get,
        queryParams: any(named: 'queryParams'))).thenAnswer((_) async {
      return Response(
          requestOptions: RequestOptions(path: EndpointManager.getWeatherUrl),
          data: weatherData,
          statusCode: 200);
    });
  }

  group('getWeather', () {
    test('should return WeatherModel when the call is successful', () async {
      setUpMockHttpManagerSuccess();

      final result = await weatherRemoteDatasource.getWeather(tCityName);

      expect(result, isA<WeatherModel>());
    });

    test('should throw Exception when an unexpected error occurs', () async {
      when(() => mockNetworkProvider.call(
              path: EndpointManager.getWeatherUrl,
              method: RequestMethod.get,
              queryParams: any(named: 'queryParams')))
          .thenThrow(Exception('Unexpected error'));

      expect(() async => await weatherRemoteDatasource.getWeather(tCityName),
          throwsA(isA<Exception>()));
    });
  });
}
