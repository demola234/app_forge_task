import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/core/network/endpoint_manager/endpoint_manager.dart';

void main() {
  setUp(() async {
    // Load the .env.test file before each test
    dotenv.testLoad(fileInput: '''
      BASE_URL=api.weather.com
    ''');
  });

  group('EndpointManager', () {
    test('should correctly set the base URL from environment variable', () {
      expect(EndpointManager.baseUrl, 'api.weather.com');
    });

    test('should generate correct weather URL', () {
      final weatherUrl = EndpointManager.getWeatherUrl;
      expect(weatherUrl, 'https://api.weather.com/weather');
    });
  });
}
