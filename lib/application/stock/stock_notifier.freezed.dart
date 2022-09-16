// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockState {
  Stock get stock => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockStateCopyWith<StockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res>;
  $Res call({Stock stock});

  $StockCopyWith<$Res> get stock;
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res> implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  final StockState _value;
  // ignore: unused_field
  final $Res Function(StockState) _then;

  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
    ));
  }

  @override
  $StockCopyWith<$Res> get stock {
    return $StockCopyWith<$Res>(_value.stock, (value) {
      return _then(_value.copyWith(stock: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({Stock stock});

  @override
  $StockCopyWith<$Res> get stock;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_$_Initial(
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.stock) : super._();

  @override
  final Stock stock;

  @override
  String toString() {
    return 'StockState.initial(stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.stock, stock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stock));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) {
    return initial(stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) {
    return initial?.call(stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends StockState {
  const factory _Initial(final Stock stock) = _$_Initial;
  const _Initial._() : super._();

  @override
  Stock get stock;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Stock stock});

  @override
  $StockCopyWith<$Res> get stock;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_$_LoadSuccess(
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.stock) : super._();

  @override
  final Stock stock;

  @override
  String toString() {
    return 'StockState.loadSuccess(stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.stock, stock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stock));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) {
    return loadSuccess(stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) {
    return loadSuccess?.call(stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends StockState {
  const factory _LoadSuccess(final Stock stock) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Stock get stock;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  $Res call({Stock stock, DatabaseFailure failure});

  @override
  $StockCopyWith<$Res> get stock;
  $DatabaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? stock = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_Failure(
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DatabaseFailure,
    ));
  }

  @override
  $DatabaseFailureCopyWith<$Res> get failure {
    return $DatabaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.stock, this.failure) : super._();

  @override
  final Stock stock;
  @override
  final DatabaseFailure failure;

  @override
  String toString() {
    return 'StockState.failure(stock: $stock, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stock),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) {
    return failure(stock, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) {
    return failure?.call(stock, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(stock, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends StockState {
  const factory _Failure(final Stock stock, final DatabaseFailure failure) =
      _$_Failure;
  const _Failure._() : super._();

  @override
  Stock get stock;
  DatabaseFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
  @override
  $Res call({Stock stock});

  @override
  $StockCopyWith<$Res> get stock;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res> extends _$StockStateCopyWithImpl<$Res>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, (v) => _then(v as _$_InProgress));

  @override
  _$_InProgress get _value => super._value as _$_InProgress;

  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_$_InProgress(
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
    ));
  }
}

/// @nodoc

class _$_InProgress extends _InProgress {
  const _$_InProgress(this.stock) : super._();

  @override
  final Stock stock;

  @override
  String toString() {
    return 'StockState.inProgress(stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgress &&
            const DeepCollectionEquality().equals(other.stock, stock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stock));

  @JsonKey(ignore: true)
  @override
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      __$$_InProgressCopyWithImpl<_$_InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) {
    return inProgress(stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) {
    return inProgress?.call(stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress extends StockState {
  const factory _InProgress(final Stock stock) = _$_InProgress;
  const _InProgress._() : super._();

  @override
  Stock get stock;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateSuccessCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$_CreateSuccessCopyWith(
          _$_CreateSuccess value, $Res Function(_$_CreateSuccess) then) =
      __$$_CreateSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Stock stock});

  @override
  $StockCopyWith<$Res> get stock;
}

/// @nodoc
class __$$_CreateSuccessCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res>
    implements _$$_CreateSuccessCopyWith<$Res> {
  __$$_CreateSuccessCopyWithImpl(
      _$_CreateSuccess _value, $Res Function(_$_CreateSuccess) _then)
      : super(_value, (v) => _then(v as _$_CreateSuccess));

  @override
  _$_CreateSuccess get _value => super._value as _$_CreateSuccess;

  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_$_CreateSuccess(
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
    ));
  }
}

/// @nodoc

class _$_CreateSuccess extends _CreateSuccess {
  const _$_CreateSuccess(this.stock) : super._();

  @override
  final Stock stock;

  @override
  String toString() {
    return 'StockState.createSuccess(stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSuccess &&
            const DeepCollectionEquality().equals(other.stock, stock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stock));

  @JsonKey(ignore: true)
  @override
  _$$_CreateSuccessCopyWith<_$_CreateSuccess> get copyWith =>
      __$$_CreateSuccessCopyWithImpl<_$_CreateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) {
    return createSuccess(stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) {
    return createSuccess?.call(stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess extends StockState {
  const factory _CreateSuccess(final Stock stock) = _$_CreateSuccess;
  const _CreateSuccess._() : super._();

  @override
  Stock get stock;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSuccessCopyWith<_$_CreateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSuccessCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$_UpdateSuccessCopyWith(
          _$_UpdateSuccess value, $Res Function(_$_UpdateSuccess) then) =
      __$$_UpdateSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Stock stock});

  @override
  $StockCopyWith<$Res> get stock;
}

/// @nodoc
class __$$_UpdateSuccessCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res>
    implements _$$_UpdateSuccessCopyWith<$Res> {
  __$$_UpdateSuccessCopyWithImpl(
      _$_UpdateSuccess _value, $Res Function(_$_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _$_UpdateSuccess));

  @override
  _$_UpdateSuccess get _value => super._value as _$_UpdateSuccess;

  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_$_UpdateSuccess(
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
    ));
  }
}

/// @nodoc

class _$_UpdateSuccess extends _UpdateSuccess {
  const _$_UpdateSuccess(this.stock) : super._();

  @override
  final Stock stock;

  @override
  String toString() {
    return 'StockState.updateSuccess(stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSuccess &&
            const DeepCollectionEquality().equals(other.stock, stock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stock));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      __$$_UpdateSuccessCopyWithImpl<_$_UpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stock stock) initial,
    required TResult Function(Stock stock) loadSuccess,
    required TResult Function(Stock stock, DatabaseFailure failure) failure,
    required TResult Function(Stock stock) inProgress,
    required TResult Function(Stock stock) createSuccess,
    required TResult Function(Stock stock) updateSuccess,
  }) {
    return updateSuccess(stock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
  }) {
    return updateSuccess?.call(stock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stock stock)? initial,
    TResult Function(Stock stock)? loadSuccess,
    TResult Function(Stock stock, DatabaseFailure failure)? failure,
    TResult Function(Stock stock)? inProgress,
    TResult Function(Stock stock)? createSuccess,
    TResult Function(Stock stock)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(stock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess extends StockState {
  const factory _UpdateSuccess(final Stock stock) = _$_UpdateSuccess;
  const _UpdateSuccess._() : super._();

  @override
  Stock get stock;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
