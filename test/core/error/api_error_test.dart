import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/core/error/api_error.dart';

void main() {
  group('ApiError', () {
    test('fromDioError handles DioExceptionType.cancel', () {
      final dioError = DioException(
        type: DioExceptionType.cancel,
        requestOptions: RequestOptions(),
      );
      final apiError = ApiError.fromDioError(dioError);
      expect(apiError.errorCode, 'CANCELLED');
      expect(apiError.errorMessage, 'Request was cancelled');
    });

    test('fromDioError handles DioExceptionType.connectionTimeout', () {
      final dioError = DioException(
        type: DioExceptionType.connectionTimeout,
        requestOptions: RequestOptions(),
      );
      final apiError = ApiError.fromDioError(dioError);
      expect(apiError.errorCode, 'NETWORK_ERROR');
      expect(apiError.errorMessage, 'Oops! Check your connection');
    });

    test('fromDioError handles DioExceptionType.badResponse', () {
      final dioError = DioException(
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(),
          data: {'code': 'TEST_ERROR', 'message': 'Test error message'},
        ),
        requestOptions: RequestOptions(),
      );
      final apiError = ApiError.fromDioError(dioError);
      expect(apiError.errorCode, 'TEST_ERROR');
      expect(apiError.errorMessage, 'Test error message');
    });

    test('fromDioError handles unknown error', () {
      final apiError = ApiError.fromDioError('Unknown error');
      expect(apiError.errorCode, 'UNKNOWN_ERROR');
      expect(apiError.errorMessage, 'Unknown error');
    });

    test('toString returns correct string representation', () {
      final apiError =
          ApiError(errorCode: 'TEST', errorMessage: 'Test message');
      expect(apiError.toString(),
          'ApiError(errorCode: TEST, errorMessage: Test message)');
    });
  });
}
