import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.failure(final String message) = _Failure;
  const factory Failure.notFoundFailure(final String message) = _NotFoundFailure;
  const factory Failure.errorFailure(final String message) = _ErrorFailure;
  const factory Failure.serverFailure(final String message) = _ServerErrorFailure;
   const factory Failure.cacheFailure(final String message) = _CacheErrorFailure;

  
}