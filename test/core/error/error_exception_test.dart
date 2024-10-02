import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/core/error/error.dart';

void main() {
  group('ErrorException', () {
    test('props should contain message', () {
      const exception = ErrorException(message: 'Test message');
      expect(exception.props, [exception.message]);
    });

    test('two ErrorExceptions with the same message should be equal', () {
      const exception1 = ErrorException(message: 'Test message');
      const exception2 = ErrorException(message: 'Test message');
      expect(exception1, equals(exception2));
    });
  });

  group('FetchDataException', () {
    test('should be a subclass of ErrorException', () {
      expect(FetchDataException(), isA<ErrorException>());
    });

    test('should use provided message', () {
      const exception = FetchDataException('Custom message');
      expect(exception.message, 'Custom message');
    });
  });

  group('BadRequestException', () {
    test('should be a subclass of ErrorException', () {
      expect(BadRequestException(), isA<ErrorException>());
    });

    test('should use provided message', () {
      const exception = BadRequestException('Invalid request');
      expect(exception.message, 'Invalid request');
    });
  });

  group('UnauthorizedException', () {
    test('should be a subclass of ErrorException', () {
      expect(UnauthorizedException(), isA<ErrorException>());
    });

    test('should use provided message', () {
      const exception = UnauthorizedException('Access denied');
      expect(exception.message, 'Access denied');
    });
  });

  group('ServerException', () {
    test('should be a subclass of ErrorException', () {
      expect(ServerException(), isA<ErrorException>());
    });

    test('should use provided message', () {
      const exception = ServerException('Internal server error');
      expect(exception.message, 'Internal server error');
    });
  });

  group('CacheException', () {
    test('should be a subclass of ErrorException', () {
      expect(CacheException(), isA<ErrorException>());
    });

    test('should use provided message', () {
      const exception = CacheException('Cache error');
      expect(exception.message, 'Cache error');
    });
  });
}
