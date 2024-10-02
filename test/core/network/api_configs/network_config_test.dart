import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_forecast/core/error/api_error.dart';
import 'package:weather_forecast/core/network/api_configs/network_config.dart';

import 'network_config_test.mocks.dart';

// Generate the mock class
@GenerateMocks([Dio])
void main() {
  late NetworkProviderImpl networkProvider;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    // Pass the mocked Dio to the provider
    networkProvider = NetworkProviderImpl();
  });

  group('NetworkProviderImpl', () {
    test('should return ApiError when Dio throws an exception', () async {
      when(mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
        options: anyNamed('options'),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/test-path'),
      ));

      expect(
        () async => await networkProvider.call(
          path: '/test-path',
          method: RequestMethod.get,
        ),
        throwsA(isA<ApiError>()),
      );
    });
  });
}
