// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiResultStateTearOff {
  const _$ApiResultStateTearOff();

  InitialState<T> initial<T>() {
    return InitialState<T>();
  }

  LoadingState<T> loading<T>() {
    return LoadingState<T>();
  }

  OnDataState<T> data<T>({required T? data}) {
    return OnDataState<T>(
      data: data,
    );
  }

  ErrorState<T> error<T>(
      {required String? errorMessage,
      required NetworkExceptions? networkException}) {
    return ErrorState<T>(
      errorMessage: errorMessage,
      networkException: networkException,
    );
  }
}

/// @nodoc
const $ApiResultState = _$ApiResultStateTearOff();

/// @nodoc
mixin _$ApiResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(
            String? errorMessage, NetworkExceptions? networkException)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T? data)? data,
    TResult Function(String? errorMessage, NetworkExceptions? networkException)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(OnDataState<T> value) data,
    required TResult Function(ErrorState<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(OnDataState<T> value)? data,
    TResult Function(ErrorState<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultStateCopyWith<T, $Res> {
  factory $ApiResultStateCopyWith(
          ApiResultState<T> value, $Res Function(ApiResultState<T>) then) =
      _$ApiResultStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ApiResultStateCopyWithImpl<T, $Res>
    implements $ApiResultStateCopyWith<T, $Res> {
  _$ApiResultStateCopyWithImpl(this._value, this._then);

  final ApiResultState<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResultState<T>) _then;
}

/// @nodoc
abstract class $InitialStateCopyWith<T, $Res> {
  factory $InitialStateCopyWith(
          InitialState<T> value, $Res Function(InitialState<T>) then) =
      _$InitialStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $InitialStateCopyWith<T, $Res> {
  _$InitialStateCopyWithImpl(
      InitialState<T> _value, $Res Function(InitialState<T>) _then)
      : super(_value, (v) => _then(v as InitialState<T>));

  @override
  InitialState<T> get _value => super._value as InitialState<T>;
}

/// @nodoc

class _$InitialState<T> implements InitialState<T> {
  const _$InitialState();

  @override
  String toString() {
    return 'ApiResultState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(
            String? errorMessage, NetworkExceptions? networkException)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T? data)? data,
    TResult Function(String? errorMessage, NetworkExceptions? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(OnDataState<T> value) data,
    required TResult Function(ErrorState<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(OnDataState<T> value)? data,
    TResult Function(ErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState<T> implements ApiResultState<T> {
  const factory InitialState() = _$InitialState<T>;
}

/// @nodoc
abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState<T> _value, $Res Function(LoadingState<T>) _then)
      : super(_value, (v) => _then(v as LoadingState<T>));

  @override
  LoadingState<T> get _value => super._value as LoadingState<T>;
}

/// @nodoc

class _$LoadingState<T> implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString() {
    return 'ApiResultState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(
            String? errorMessage, NetworkExceptions? networkException)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T? data)? data,
    TResult Function(String? errorMessage, NetworkExceptions? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(OnDataState<T> value) data,
    required TResult Function(ErrorState<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(OnDataState<T> value)? data,
    TResult Function(ErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements ApiResultState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class $OnDataStateCopyWith<T, $Res> {
  factory $OnDataStateCopyWith(
          OnDataState<T> value, $Res Function(OnDataState<T>) then) =
      _$OnDataStateCopyWithImpl<T, $Res>;
  $Res call({T? data});
}

/// @nodoc
class _$OnDataStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $OnDataStateCopyWith<T, $Res> {
  _$OnDataStateCopyWithImpl(
      OnDataState<T> _value, $Res Function(OnDataState<T>) _then)
      : super(_value, (v) => _then(v as OnDataState<T>));

  @override
  OnDataState<T> get _value => super._value as OnDataState<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(OnDataState<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$OnDataState<T> implements OnDataState<T> {
  const _$OnDataState({required this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'ApiResultState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnDataState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $OnDataStateCopyWith<T, OnDataState<T>> get copyWith =>
      _$OnDataStateCopyWithImpl<T, OnDataState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(
            String? errorMessage, NetworkExceptions? networkException)
        error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T? data)? data,
    TResult Function(String? errorMessage, NetworkExceptions? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(OnDataState<T> value) data,
    required TResult Function(ErrorState<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(OnDataState<T> value)? data,
    TResult Function(ErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class OnDataState<T> implements ApiResultState<T> {
  const factory OnDataState({required T? data}) = _$OnDataState<T>;

  T? get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnDataStateCopyWith<T, OnDataState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<T, $Res> {
  factory $ErrorStateCopyWith(
          ErrorState<T> value, $Res Function(ErrorState<T>) then) =
      _$ErrorStateCopyWithImpl<T, $Res>;
  $Res call({String? errorMessage, NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class _$ErrorStateCopyWithImpl<T, $Res>
    extends _$ApiResultStateCopyWithImpl<T, $Res>
    implements $ErrorStateCopyWith<T, $Res> {
  _$ErrorStateCopyWithImpl(
      ErrorState<T> _value, $Res Function(ErrorState<T>) _then)
      : super(_value, (v) => _then(v as ErrorState<T>));

  @override
  ErrorState<T> get _value => super._value as ErrorState<T>;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? networkException = freezed,
  }) {
    return _then(ErrorState<T>(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      networkException: networkException == freezed
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$ErrorState<T> implements ErrorState<T> {
  const _$ErrorState(
      {required this.errorMessage, required this.networkException});

  @override
  final String? errorMessage;
  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'ApiResultState<$T>.error(errorMessage: $errorMessage, networkException: $networkException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorState<T> &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.networkException, networkException) ||
                const DeepCollectionEquality()
                    .equals(other.networkException, networkException)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(networkException);

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<T, ErrorState<T>> get copyWith =>
      _$ErrorStateCopyWithImpl<T, ErrorState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T? data) data,
    required TResult Function(
            String? errorMessage, NetworkExceptions? networkException)
        error,
  }) {
    return error(errorMessage, networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T? data)? data,
    TResult Function(String? errorMessage, NetworkExceptions? networkException)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(OnDataState<T> value) data,
    required TResult Function(ErrorState<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(OnDataState<T> value)? data,
    TResult Function(ErrorState<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState<T> implements ApiResultState<T> {
  const factory ErrorState(
      {required String? errorMessage,
      required NetworkExceptions? networkException}) = _$ErrorState<T>;

  String? get errorMessage => throw _privateConstructorUsedError;
  NetworkExceptions? get networkException => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<T, ErrorState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
