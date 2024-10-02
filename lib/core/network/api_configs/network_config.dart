import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_forecast/core/error/api_error.dart';

abstract class NetworkProvider {
  Future<Response?> call({
    required String path,
    required RequestMethod method,
    dynamic body = const {},
    Options? options,
    Map<String, dynamic> queryParams = const {},
  });
}

class NetworkProviderImpl extends NetworkProvider {
  late final Dio dio;

  NetworkProviderImpl() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 10000),
        headers: {
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive',
          'Content-Type': 'application/json',
        },
      ),
    );

    // Adding interceptors
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

    dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
  }

  @override
  Future<Response?> call({
    required String path,
    required RequestMethod method,
    dynamic body = const {},
    Options? options,
    Map<String, dynamic> queryParams = const {},
  }) async {
    Response? response;
    try {
      switch (method) {
        case RequestMethod.get:
          response = await dio.get(path,
              queryParameters: queryParams, options: options);
          break;
        case RequestMethod.post:
          response = await dio.post(path,
              data: body, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.patch:
          response = await dio.patch(path,
              data: body, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.put:
          response = await dio.put(path,
              data: body, queryParameters: queryParams, options: options);
          break;
        case RequestMethod.delete:
          response = await dio.delete(path,
              data: body, queryParameters: queryParams, options: options);
          break;
      }
      return response;
    } catch (e) {
      return Future.error(ApiError.fromDioError(e));
    }
  }
}

enum RequestMethod { get, post, put, patch, delete }
