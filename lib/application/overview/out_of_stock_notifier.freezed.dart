// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'out_of_stock_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OutOfStockState {
  StockList get stockList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockList stockList) initial,
    required TResult Function(StockList stockList) loadSuccess,
    required TResult Function(StockList stockList, DatabaseFailure failure)
        failure,
    required TResult Function(StockList stockList) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockList stockList)? initial,
    TResult? Function(StockList stockList)? loadSuccess,
    TResult? Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult? Function(StockList stockList)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockList stockList)? initial,
    TResult Function(StockList stockList)? loadSuccess,
    TResult Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult Function(StockList stockList)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_InProgress value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InProgress value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutOfStockStateCopyWith<OutOfStockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutOfStockStateCopyWith<$Res> {
  factory $OutOfStockStateCopyWith(
          OutOfStockState value, $Res Function(OutOfStockState) then) =
      _$OutOfStockStateCopyWithImpl<$Res, OutOfStockState>;
  @useResult
  $Res call({StockList stockList});

  $StockListCopyWith<$Res> get stockList;
}

/// @nodoc
class _$OutOfStockStateCopyWithImpl<$Res, $Val extends OutOfStockState>
    implements $OutOfStockStateCopyWith<$Res> {
  _$OutOfStockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockList = null,
  }) {
    return _then(_value.copyWith(
      stockList: null == stockList
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as StockList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockListCopyWith<$Res> get stockList {
    return $StockListCopyWith<$Res>(_value.stockList, (value) {
      return _then(_value.copyWith(stockList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OutOfStockStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockList stockList});

  @override
  $StockListCopyWith<$Res> get stockList;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OutOfStockStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockList = null,
  }) {
    return _then(_$_Initial(
      null == stockList
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as StockList,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.stockList) : super._();

  @override
  final StockList stockList;

  @override
  String toString() {
    return 'OutOfStockState.initial(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.stockList, stockList) ||
                other.stockList == stockList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockList stockList) initial,
    required TResult Function(StockList stockList) loadSuccess,
    required TResult Function(StockList stockList, DatabaseFailure failure)
        failure,
    required TResult Function(StockList stockList) inProgress,
  }) {
    return initial(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockList stockList)? initial,
    TResult? Function(StockList stockList)? loadSuccess,
    TResult? Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult? Function(StockList stockList)? inProgress,
  }) {
    return initial?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockList stockList)? initial,
    TResult Function(StockList stockList)? loadSuccess,
    TResult Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult Function(StockList stockList)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(stockList);
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InProgress value)? inProgress,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends OutOfStockState {
  const factory _Initial(final StockList stockList) = _$_Initial;
  const _Initial._() : super._();

  @override
  StockList get stockList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $OutOfStockStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockList stockList});

  @override
  $StockListCopyWith<$Res> get stockList;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$OutOfStockStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockList = null,
  }) {
    return _then(_$_LoadSuccess(
      null == stockList
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as StockList,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.stockList) : super._();

  @override
  final StockList stockList;

  @override
  String toString() {
    return 'OutOfStockState.loadSuccess(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.stockList, stockList) ||
                other.stockList == stockList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockList stockList) initial,
    required TResult Function(StockList stockList) loadSuccess,
    required TResult Function(StockList stockList, DatabaseFailure failure)
        failure,
    required TResult Function(StockList stockList) inProgress,
  }) {
    return loadSuccess(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockList stockList)? initial,
    TResult? Function(StockList stockList)? loadSuccess,
    TResult? Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult? Function(StockList stockList)? inProgress,
  }) {
    return loadSuccess?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockList stockList)? initial,
    TResult Function(StockList stockList)? loadSuccess,
    TResult Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult Function(StockList stockList)? inProgress,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(stockList);
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
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InProgress value)? inProgress,
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
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends OutOfStockState {
  const factory _LoadSuccess(final StockList stockList) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  StockList get stockList;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $OutOfStockStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockList stockList, DatabaseFailure failure});

  @override
  $StockListCopyWith<$Res> get stockList;
  $DatabaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$OutOfStockStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockList = null,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == stockList
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as StockList,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DatabaseFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DatabaseFailureCopyWith<$Res> get failure {
    return $DatabaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.stockList, this.failure) : super._();

  @override
  final StockList stockList;
  @override
  final DatabaseFailure failure;

  @override
  String toString() {
    return 'OutOfStockState.failure(stockList: $stockList, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.stockList, stockList) ||
                other.stockList == stockList) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockList, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockList stockList) initial,
    required TResult Function(StockList stockList) loadSuccess,
    required TResult Function(StockList stockList, DatabaseFailure failure)
        failure,
    required TResult Function(StockList stockList) inProgress,
  }) {
    return failure(stockList, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockList stockList)? initial,
    TResult? Function(StockList stockList)? loadSuccess,
    TResult? Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult? Function(StockList stockList)? inProgress,
  }) {
    return failure?.call(stockList, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockList stockList)? initial,
    TResult Function(StockList stockList)? loadSuccess,
    TResult Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult Function(StockList stockList)? inProgress,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(stockList, this.failure);
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
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InProgress value)? inProgress,
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
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends OutOfStockState {
  const factory _Failure(
      final StockList stockList, final DatabaseFailure failure) = _$_Failure;
  const _Failure._() : super._();

  @override
  StockList get stockList;
  DatabaseFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res>
    implements $OutOfStockStateCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockList stockList});

  @override
  $StockListCopyWith<$Res> get stockList;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$OutOfStockStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockList = null,
  }) {
    return _then(_$_InProgress(
      null == stockList
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as StockList,
    ));
  }
}

/// @nodoc

class _$_InProgress extends _InProgress {
  const _$_InProgress(this.stockList) : super._();

  @override
  final StockList stockList;

  @override
  String toString() {
    return 'OutOfStockState.inProgress(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgress &&
            (identical(other.stockList, stockList) ||
                other.stockList == stockList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stockList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      __$$_InProgressCopyWithImpl<_$_InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockList stockList) initial,
    required TResult Function(StockList stockList) loadSuccess,
    required TResult Function(StockList stockList, DatabaseFailure failure)
        failure,
    required TResult Function(StockList stockList) inProgress,
  }) {
    return inProgress(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockList stockList)? initial,
    TResult? Function(StockList stockList)? loadSuccess,
    TResult? Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult? Function(StockList stockList)? inProgress,
  }) {
    return inProgress?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockList stockList)? initial,
    TResult Function(StockList stockList)? loadSuccess,
    TResult Function(StockList stockList, DatabaseFailure failure)? failure,
    TResult Function(StockList stockList)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(stockList);
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
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_InProgress value)? inProgress,
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
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress extends OutOfStockState {
  const factory _InProgress(final StockList stockList) = _$_InProgress;
  const _InProgress._() : super._();

  @override
  StockList get stockList;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
