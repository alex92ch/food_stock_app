// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'out_of_stock_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OutOfStockState {
  List<Product> get outOfStockList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> outOfStockList) initial,
    required TResult Function(List<Product> outOfStockList) loadSuccess,
    required TResult Function(
            List<Product> outOfStockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Product> outOfStockList) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
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
      _$OutOfStockStateCopyWithImpl<$Res>;
  $Res call({List<Product> outOfStockList});
}

/// @nodoc
class _$OutOfStockStateCopyWithImpl<$Res>
    implements $OutOfStockStateCopyWith<$Res> {
  _$OutOfStockStateCopyWithImpl(this._value, this._then);

  final OutOfStockState _value;
  // ignore: unused_field
  final $Res Function(OutOfStockState) _then;

  @override
  $Res call({
    Object? outOfStockList = freezed,
  }) {
    return _then(_value.copyWith(
      outOfStockList: outOfStockList == freezed
          ? _value.outOfStockList
          : outOfStockList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OutOfStockStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> outOfStockList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$OutOfStockStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? outOfStockList = freezed,
  }) {
    return _then(_$_Initial(
      outOfStockList == freezed
          ? _value._outOfStockList
          : outOfStockList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(final List<Product> outOfStockList)
      : _outOfStockList = outOfStockList,
        super._();

  final List<Product> _outOfStockList;
  @override
  List<Product> get outOfStockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outOfStockList);
  }

  @override
  String toString() {
    return 'OutOfStockState.initial(outOfStockList: $outOfStockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._outOfStockList, _outOfStockList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_outOfStockList));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> outOfStockList) initial,
    required TResult Function(List<Product> outOfStockList) loadSuccess,
    required TResult Function(
            List<Product> outOfStockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Product> outOfStockList) inProgress,
  }) {
    return initial(outOfStockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
  }) {
    return initial?.call(outOfStockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(outOfStockList);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
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
  const factory _Initial(final List<Product> outOfStockList) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<Product> get outOfStockList;
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
  $Res call({List<Product> outOfStockList});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$OutOfStockStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? outOfStockList = freezed,
  }) {
    return _then(_$_LoadSuccess(
      outOfStockList == freezed
          ? _value._outOfStockList
          : outOfStockList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(final List<Product> outOfStockList)
      : _outOfStockList = outOfStockList,
        super._();

  final List<Product> _outOfStockList;
  @override
  List<Product> get outOfStockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outOfStockList);
  }

  @override
  String toString() {
    return 'OutOfStockState.loadSuccess(outOfStockList: $outOfStockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._outOfStockList, _outOfStockList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_outOfStockList));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> outOfStockList) initial,
    required TResult Function(List<Product> outOfStockList) loadSuccess,
    required TResult Function(
            List<Product> outOfStockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Product> outOfStockList) inProgress,
  }) {
    return loadSuccess(outOfStockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
  }) {
    return loadSuccess?.call(outOfStockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(outOfStockList);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
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
  const factory _LoadSuccess(final List<Product> outOfStockList) =
      _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  List<Product> get outOfStockList;
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
  $Res call({List<Product> outOfStockList, DatabaseFailure failure});

  $DatabaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$OutOfStockStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? outOfStockList = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_Failure(
      outOfStockList == freezed
          ? _value._outOfStockList
          : outOfStockList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
  const _$_Failure(final List<Product> outOfStockList, this.failure)
      : _outOfStockList = outOfStockList,
        super._();

  final List<Product> _outOfStockList;
  @override
  List<Product> get outOfStockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outOfStockList);
  }

  @override
  final DatabaseFailure failure;

  @override
  String toString() {
    return 'OutOfStockState.failure(outOfStockList: $outOfStockList, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other._outOfStockList, _outOfStockList) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_outOfStockList),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> outOfStockList) initial,
    required TResult Function(List<Product> outOfStockList) loadSuccess,
    required TResult Function(
            List<Product> outOfStockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Product> outOfStockList) inProgress,
  }) {
    return failure(outOfStockList, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
  }) {
    return failure?.call(outOfStockList, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(outOfStockList, this.failure);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
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
          final List<Product> outOfStockList, final DatabaseFailure failure) =
      _$_Failure;
  const _Failure._() : super._();

  @override
  List<Product> get outOfStockList;
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
  $Res call({List<Product> outOfStockList});
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$OutOfStockStateCopyWithImpl<$Res>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, (v) => _then(v as _$_InProgress));

  @override
  _$_InProgress get _value => super._value as _$_InProgress;

  @override
  $Res call({
    Object? outOfStockList = freezed,
  }) {
    return _then(_$_InProgress(
      outOfStockList == freezed
          ? _value._outOfStockList
          : outOfStockList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_InProgress extends _InProgress {
  const _$_InProgress(final List<Product> outOfStockList)
      : _outOfStockList = outOfStockList,
        super._();

  final List<Product> _outOfStockList;
  @override
  List<Product> get outOfStockList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outOfStockList);
  }

  @override
  String toString() {
    return 'OutOfStockState.inProgress(outOfStockList: $outOfStockList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgress &&
            const DeepCollectionEquality()
                .equals(other._outOfStockList, _outOfStockList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_outOfStockList));

  @JsonKey(ignore: true)
  @override
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      __$$_InProgressCopyWithImpl<_$_InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> outOfStockList) initial,
    required TResult Function(List<Product> outOfStockList) loadSuccess,
    required TResult Function(
            List<Product> outOfStockList, DatabaseFailure failure)
        failure,
    required TResult Function(List<Product> outOfStockList) inProgress,
  }) {
    return inProgress(outOfStockList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
  }) {
    return inProgress?.call(outOfStockList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> outOfStockList)? initial,
    TResult Function(List<Product> outOfStockList)? loadSuccess,
    TResult Function(List<Product> outOfStockList, DatabaseFailure failure)?
        failure,
    TResult Function(List<Product> outOfStockList)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(outOfStockList);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_InProgress value)? inProgress,
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
  const factory _InProgress(final List<Product> outOfStockList) = _$_InProgress;
  const _InProgress._() : super._();

  @override
  List<Product> get outOfStockList;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
