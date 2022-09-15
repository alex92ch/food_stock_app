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
  List<Stock> get stockList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
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
  $Res call({List<Stock> stockList});
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res> implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  final StockState _value;
  // ignore: unused_field
  final $Res Function(StockState) _then;

  @override
  $Res call({
    Object? stockList = freezed,
  }) {
    return _then(_value.copyWith(
      stockList: stockList == freezed
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Stock> stockList});
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
    Object? stockList = freezed,
  }) {
    return _then(_$_Initial(
      stockList == freezed
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(final List<Stock> stockList)
      : _stockList = stockList,
        super._();

  final List<Stock> _stockList;
  @override
  List<Stock> get stockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  String toString() {
    return 'StockState.initial(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stockList));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) {
    return initial(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) {
    return initial?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
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
  const factory _Initial(final List<Stock> stockList) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<Stock> get stockList;
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
  $Res call({List<Stock> stockList});
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
    Object? stockList = freezed,
  }) {
    return _then(_$_LoadSuccess(
      stockList == freezed
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(final List<Stock> stockList)
      : _stockList = stockList,
        super._();

  final List<Stock> _stockList;
  @override
  List<Stock> get stockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  String toString() {
    return 'StockState.loadSuccess(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stockList));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) {
    return loadSuccess(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) {
    return loadSuccess?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
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
  const factory _LoadSuccess(final List<Stock> stockList) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  List<Stock> get stockList;
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
  $Res call({List<Stock> stockList, DatabaseFailure failure});

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
    Object? stockList = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_Failure(
      stockList == freezed
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
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
  const _$_Failure(final List<Stock> stockList, this.failure)
      : _stockList = stockList,
        super._();

  final List<Stock> _stockList;
  @override
  List<Stock> get stockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  final DatabaseFailure failure;

  @override
  String toString() {
    return 'StockState.failure(stockList: $stockList, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stockList),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) {
    return failure(stockList, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) {
    return failure?.call(stockList, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
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
  const factory _Failure(
      final List<Stock> stockList, final DatabaseFailure failure) = _$_Failure;
  const _Failure._() : super._();

  @override
  List<Stock> get stockList;
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
  $Res call({List<Stock> stockList});
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
    Object? stockList = freezed,
  }) {
    return _then(_$_InProgress(
      stockList == freezed
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_InProgress extends _InProgress {
  const _$_InProgress(final List<Stock> stockList)
      : _stockList = stockList,
        super._();

  final List<Stock> _stockList;
  @override
  List<Stock> get stockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  String toString() {
    return 'StockState.inProgress(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgress &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stockList));

  @JsonKey(ignore: true)
  @override
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      __$$_InProgressCopyWithImpl<_$_InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) {
    return inProgress(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) {
    return inProgress?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
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
  const factory _InProgress(final List<Stock> stockList) = _$_InProgress;
  const _InProgress._() : super._();

  @override
  List<Stock> get stockList;
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
  $Res call({List<Stock> stockList});
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
    Object? stockList = freezed,
  }) {
    return _then(_$_CreateSuccess(
      stockList == freezed
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_CreateSuccess extends _CreateSuccess {
  const _$_CreateSuccess(final List<Stock> stockList)
      : _stockList = stockList,
        super._();

  final List<Stock> _stockList;
  @override
  List<Stock> get stockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  String toString() {
    return 'StockState.createSuccess(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSuccess &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stockList));

  @JsonKey(ignore: true)
  @override
  _$$_CreateSuccessCopyWith<_$_CreateSuccess> get copyWith =>
      __$$_CreateSuccessCopyWithImpl<_$_CreateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) {
    return createSuccess(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) {
    return createSuccess?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(stockList);
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
  const factory _CreateSuccess(final List<Stock> stockList) = _$_CreateSuccess;
  const _CreateSuccess._() : super._();

  @override
  List<Stock> get stockList;
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
  $Res call({List<Stock> stockList});
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
    Object? stockList = freezed,
  }) {
    return _then(_$_UpdateSuccess(
      stockList == freezed
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_UpdateSuccess extends _UpdateSuccess {
  const _$_UpdateSuccess(final List<Stock> stockList)
      : _stockList = stockList,
        super._();

  final List<Stock> _stockList;
  @override
  List<Stock> get stockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  String toString() {
    return 'StockState.updateSuccess(stockList: $stockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSuccess &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stockList));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      __$$_UpdateSuccessCopyWithImpl<_$_UpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stock> stockList) initial,
    required TResult Function(List<Stock> stockList) loadSuccess,
    required TResult Function(List<Stock> stockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Stock> stockList) inProgress,
    required TResult Function(List<Stock> stockList) createSuccess,
    required TResult Function(List<Stock> stockList) updateSuccess,
  }) {
    return updateSuccess(stockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
  }) {
    return updateSuccess?.call(stockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stock> stockList)? initial,
    TResult Function(List<Stock> stockList)? loadSuccess,
    TResult Function(List<Stock> stockList, DatabaseFailure failure)? failure,
    TResult Function(List<Stock> stockList)? inProgress,
    TResult Function(List<Stock> stockList)? createSuccess,
    TResult Function(List<Stock> stockList)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(stockList);
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
  const factory _UpdateSuccess(final List<Stock> stockList) = _$_UpdateSuccess;
  const _UpdateSuccess._() : super._();

  @override
  List<Stock> get stockList;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSuccessCopyWith<_$_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
