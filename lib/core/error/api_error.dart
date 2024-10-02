import 'dart:developer';

import 'package:dio/dio.dart';

class ApiError {
  final String errorCode;
  final String errorMessage;

  ApiError({
    required this.errorCode,
    required this.errorMessage,
  });

  factory ApiError.fromDioError(Object error) {
    dynamic errorMessage = '';
    dynamic errorCode = '';
    if (error is DioException) {
      var dioError = error;
      switch (dioError.type) {
        case DioExceptionType.cancel:
          errorMessage = 'Request was cancelled';
          errorCode = 'CANCELLED';
          break;
        case DioExceptionType.connectionError:
          errorMessage = 'Connection timeout';
          errorCode = 'CONNECTION_TIMEOUT';
          break;
        case DioExceptionType.connectionTimeout:
          errorMessage = 'Oops! Check your connection';
          errorCode = 'NETWORK_ERROR';
          break;
        case DioExceptionType.receiveTimeout:
          errorMessage = 'Receive timeout in connection';
          errorCode = 'RECEIVE_TIMEOUT';
          break;
        case DioExceptionType.sendTimeout:
          errorMessage = 'Send timeout in connection';
          errorCode = 'SEND_TIMEOUT';
          break;
        case DioExceptionType.badCertificate:
          errorMessage = 'Invalid certificate';
          errorCode = 'BAD_CERTIFICATE';
          break;
        case DioExceptionType.badResponse:
          if (dioError.response != null) {
            final errorData = extractDataFromResponse(dioError.response);
            errorCode = errorData['code'] ?? 'BAD_RESPONSE';
            errorMessage =
                errorData['message'] ?? 'An unexpected error occurred';
          } else {
            errorMessage = 'An unexpected server response occurred';
            errorCode = 'BAD_RESPONSE';
          }
          break;
        case DioExceptionType.unknown:
          errorMessage = 'An unknown error occurred';
          errorCode = 'UNKNOWN_ERROR';
          break;
      }
    } else {
      errorMessage = _handleException(error);
      errorCode = 'UNKNOWN_ERROR';
    }

    log('errorCode: $errorCode, errorMessage: $errorMessage');
    return ApiError(
      errorCode: errorCode.toString(),
      errorMessage: errorMessage.toString(),
    );
  }

  static String _handleException(dynamic exception) {
    if (exception is String) {
      return exception;
    } else {
      return 'An unexpected error occurred, please try again';
    }
  }

  static Map<String, String> extractDataFromResponse(Response? response) {
    dynamic message = '';
    dynamic errorCode = '';

    if (response != null && response.data != null) {
      var decodeResponse = response.data;

      if (decodeResponse is Map) {
        message = decodeResponse['message'] ??
            decodeResponse['error'] ??
            'An unexpected error occurred, please try again';
        errorCode = decodeResponse['code'] ?? 'UNEXPECTED_ERROR';
      } else {
        message = 'Invalid response format';
        errorCode = 'INVALID_FORMAT';
      }
    } else {
      message = response?.statusMessage ?? 'No response data available';
      errorCode = 'NO_RESPONSE_DATA';
    }

    return {'message': message.toString(), 'code': errorCode.toString()};
  }

  @override
  String toString() =>
      'ApiError(errorCode: $errorCode, errorMessage: $errorMessage)';
}
