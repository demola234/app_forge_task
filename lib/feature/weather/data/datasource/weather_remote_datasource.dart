import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_forecast/core/network/api_configs/network_config.dart';
import 'package:weather_forecast/core/network/endpoint_manager/endpoint_manager.dart';
import 'package:weather_forecast/feature/weather/data/models/weather_model.dart';

abstract class WeatherRemoteDatasource {
  Future<WeatherModel> getWeather(String cityName);
}

class IWeatherRemoteDatasource extends WeatherRemoteDatasource {
  final NetworkProvider client;

  IWeatherRemoteDatasource({
    required this.client,
  });
  @override
  Future<WeatherModel> getWeather(String cityName) async {
    final String apiKey = dotenv.env['API_KEY']!;

    try {
      final response = await client.call(
        path: EndpointManager.getWeatherUrl,
        method: RequestMethod.get,
        queryParams: {
          'q': cityName,
          'appid': apiKey,
          'units': 'metric',
        },
      );

      final result = response!.data;

      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return WeatherModel.fromMap(result);
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          error:
              'Failed to load weather data, status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      if (e is DioException) {
        print('Request failed with status: ${e.response?.statusCode}');
        print('Response data: ${e.response?.data}');
      }
      throw Exception('Error occurred while fetching weather data: $e');
    }
  }
}
