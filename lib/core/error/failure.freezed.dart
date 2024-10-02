// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? cacheFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_ServerErrorFailure value) serverFailure,
    required TResult Function(_CacheErrorFailure value) cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_ServerErrorFailure value)? serverFailure,
    TResult? Function(_CacheErrorFailure value)? cacheFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_ServerErrorFailure value)? serverFailure,
    TResult Function(_CacheErrorFailure value)? cacheFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) cacheFailure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? cacheFailure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? cacheFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_ServerErrorFailure value) serverFailure,
    required TResult Function(_CacheErrorFailure value) cacheFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_ServerErrorFailure value)? serverFailure,
    TResult? Function(_CacheErrorFailure value)? cacheFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_ServerErrorFailure value)? serverFailure,
    TResult Function(_CacheErrorFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements Failure {
  const factory _Failure(final String message) = _$FailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements _NotFoundFailure {
  const _$NotFoundFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notFoundFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) cacheFailure,
  }) {
    return notFoundFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? cacheFailure,
  }) {
    return notFoundFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? cacheFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_ServerErrorFailure value) serverFailure,
    required TResult Function(_CacheErrorFailure value) cacheFailure,
  }) {
    return notFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_ServerErrorFailure value)? serverFailure,
    TResult? Function(_CacheErrorFailure value)? cacheFailure,
  }) {
    return notFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_ServerErrorFailure value)? serverFailure,
    TResult Function(_CacheErrorFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(this);
    }
    return orElse();
  }
}

abstract class _NotFoundFailure implements Failure {
  const factory _NotFoundFailure(final String message) = _$NotFoundFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ErrorFailureImplCopyWith(
          _$ErrorFailureImpl value, $Res Function(_$ErrorFailureImpl) then) =
      __$$ErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ErrorFailureImpl>
    implements _$$ErrorFailureImplCopyWith<$Res> {
  __$$ErrorFailureImplCopyWithImpl(
      _$ErrorFailureImpl _value, $Res Function(_$ErrorFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFailureImpl implements _ErrorFailure {
  const _$ErrorFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.errorFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorFailureImplCopyWith<_$ErrorFailureImpl> get copyWith =>
      __$$ErrorFailureImplCopyWithImpl<_$ErrorFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) cacheFailure,
  }) {
    return errorFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? cacheFailure,
  }) {
    return errorFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? cacheFailure,
    required TResult orElse(),
  }) {
    if (errorFailure != null) {
      return errorFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_ServerErrorFailure value) serverFailure,
    required TResult Function(_CacheErrorFailure value) cacheFailure,
  }) {
    return errorFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_ServerErrorFailure value)? serverFailure,
    TResult? Function(_CacheErrorFailure value)? cacheFailure,
  }) {
    return errorFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_ServerErrorFailure value)? serverFailure,
    TResult Function(_CacheErrorFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (errorFailure != null) {
      return errorFailure(this);
    }
    return orElse();
  }
}

abstract class _ErrorFailure implements Failure {
  const factory _ErrorFailure(final String message) = _$ErrorFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorFailureImplCopyWith<_$ErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerErrorFailureImplCopyWith(_$ServerErrorFailureImpl value,
          $Res Function(_$ServerErrorFailureImpl) then) =
      __$$ServerErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerErrorFailureImpl>
    implements _$$ServerErrorFailureImplCopyWith<$Res> {
  __$$ServerErrorFailureImplCopyWithImpl(_$ServerErrorFailureImpl _value,
      $Res Function(_$ServerErrorFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerErrorFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorFailureImpl implements _ServerErrorFailure {
  const _$ServerErrorFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorFailureImplCopyWith<_$ServerErrorFailureImpl> get copyWith =>
      __$$ServerErrorFailureImplCopyWithImpl<_$ServerErrorFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) cacheFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? cacheFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? cacheFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_ServerErrorFailure value) serverFailure,
    required TResult Function(_CacheErrorFailure value) cacheFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_ServerErrorFailure value)? serverFailure,
    TResult? Function(_CacheErrorFailure value)? cacheFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_ServerErrorFailure value)? serverFailure,
    TResult Function(_CacheErrorFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerErrorFailure implements Failure {
  const factory _ServerErrorFailure(final String message) =
      _$ServerErrorFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorFailureImplCopyWith<_$ServerErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheErrorFailureImplCopyWith(_$CacheErrorFailureImpl value,
          $Res Function(_$CacheErrorFailureImpl) then) =
      __$$CacheErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheErrorFailureImpl>
    implements _$$CacheErrorFailureImplCopyWith<$Res> {
  __$$CacheErrorFailureImplCopyWithImpl(_$CacheErrorFailureImpl _value,
      $Res Function(_$CacheErrorFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheErrorFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheErrorFailureImpl implements _CacheErrorFailure {
  const _$CacheErrorFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheErrorFailureImplCopyWith<_$CacheErrorFailureImpl> get copyWith =>
      __$$CacheErrorFailureImplCopyWithImpl<_$CacheErrorFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) cacheFailure,
  }) {
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? cacheFailure,
  }) {
    return cacheFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? cacheFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
    required TResult Function(_ServerErrorFailure value) serverFailure,
    required TResult Function(_CacheErrorFailure value) cacheFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
    TResult? Function(_ServerErrorFailure value)? serverFailure,
    TResult? Function(_CacheErrorFailure value)? cacheFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    TResult Function(_ServerErrorFailure value)? serverFailure,
    TResult Function(_CacheErrorFailure value)? cacheFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheErrorFailure implements Failure {
  const factory _CacheErrorFailure(final String message) =
      _$CacheErrorFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheErrorFailureImplCopyWith<_$CacheErrorFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
