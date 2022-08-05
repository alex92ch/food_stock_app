// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() requestedDocumentNotFound,
    required TResult Function() dataAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(DocNotFound value) requestedDocumentNotFound,
    required TResult Function(DataExists value) dataAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseFailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(
          DatabaseFailure value, $Res Function(DatabaseFailure) then) =
      _$DatabaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._value, this._then);

  final DatabaseFailure _value;
  // ignore: unused_field
  final $Res Function(DatabaseFailure) _then;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, (v) => _then(v as _$Unexpected));

  @override
  _$Unexpected get _value => super._value as _$Unexpected;
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'DatabaseFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() requestedDocumentNotFound,
    required TResult Function() dataAlreadyExists,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(DocNotFound value) requestedDocumentNotFound,
    required TResult Function(DataExists value) dataAlreadyExists,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements DatabaseFailure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class _$$InsufficientPermissionsCopyWith<$Res> {
  factory _$$InsufficientPermissionsCopyWith(_$InsufficientPermissions value,
          $Res Function(_$InsufficientPermissions) then) =
      __$$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$InsufficientPermissionsCopyWith<$Res> {
  __$$InsufficientPermissionsCopyWithImpl(_$InsufficientPermissions _value,
      $Res Function(_$InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as _$InsufficientPermissions));

  @override
  _$InsufficientPermissions get _value =>
      super._value as _$InsufficientPermissions;
}

/// @nodoc

class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString() {
    return 'DatabaseFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() requestedDocumentNotFound,
    required TResult Function() dataAlreadyExists,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(DocNotFound value) requestedDocumentNotFound,
    required TResult Function(DataExists value) dataAlreadyExists,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements DatabaseFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

/// @nodoc
abstract class _$$DocNotFoundCopyWith<$Res> {
  factory _$$DocNotFoundCopyWith(
          _$DocNotFound value, $Res Function(_$DocNotFound) then) =
      __$$DocNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocNotFoundCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$DocNotFoundCopyWith<$Res> {
  __$$DocNotFoundCopyWithImpl(
      _$DocNotFound _value, $Res Function(_$DocNotFound) _then)
      : super(_value, (v) => _then(v as _$DocNotFound));

  @override
  _$DocNotFound get _value => super._value as _$DocNotFound;
}

/// @nodoc

class _$DocNotFound implements DocNotFound {
  const _$DocNotFound();

  @override
  String toString() {
    return 'DatabaseFailure.requestedDocumentNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DocNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() requestedDocumentNotFound,
    required TResult Function() dataAlreadyExists,
  }) {
    return requestedDocumentNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
  }) {
    return requestedDocumentNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (requestedDocumentNotFound != null) {
      return requestedDocumentNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(DocNotFound value) requestedDocumentNotFound,
    required TResult Function(DataExists value) dataAlreadyExists,
  }) {
    return requestedDocumentNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
  }) {
    return requestedDocumentNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (requestedDocumentNotFound != null) {
      return requestedDocumentNotFound(this);
    }
    return orElse();
  }
}

abstract class DocNotFound implements DatabaseFailure {
  const factory DocNotFound() = _$DocNotFound;
}

/// @nodoc
abstract class _$$DataExistsCopyWith<$Res> {
  factory _$$DataExistsCopyWith(
          _$DataExists value, $Res Function(_$DataExists) then) =
      __$$DataExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataExistsCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res>
    implements _$$DataExistsCopyWith<$Res> {
  __$$DataExistsCopyWithImpl(
      _$DataExists _value, $Res Function(_$DataExists) _then)
      : super(_value, (v) => _then(v as _$DataExists));

  @override
  _$DataExists get _value => super._value as _$DataExists;
}

/// @nodoc

class _$DataExists implements DataExists {
  const _$DataExists();

  @override
  String toString() {
    return 'DatabaseFailure.dataAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() requestedDocumentNotFound,
    required TResult Function() dataAlreadyExists,
  }) {
    return dataAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
  }) {
    return dataAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? requestedDocumentNotFound,
    TResult Function()? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (dataAlreadyExists != null) {
      return dataAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(DocNotFound value) requestedDocumentNotFound,
    required TResult Function(DataExists value) dataAlreadyExists,
  }) {
    return dataAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
  }) {
    return dataAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermissions value)? insufficientPermissions,
    TResult Function(DocNotFound value)? requestedDocumentNotFound,
    TResult Function(DataExists value)? dataAlreadyExists,
    required TResult orElse(),
  }) {
    if (dataAlreadyExists != null) {
      return dataAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class DataExists implements DatabaseFailure {
  const factory DataExists() = _$DataExists;
}
