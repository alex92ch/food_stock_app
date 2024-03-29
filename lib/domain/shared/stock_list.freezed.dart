// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockList {
  List<FreezerItem> get freezerItemList => throw _privateConstructorUsedError;
  List<FridgeItem> get fridgeItemList => throw _privateConstructorUsedError;
  List<CupboardItem> get cupboardItemList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockListCopyWith<StockList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockListCopyWith<$Res> {
  factory $StockListCopyWith(StockList value, $Res Function(StockList) then) =
      _$StockListCopyWithImpl<$Res, StockList>;
  @useResult
  $Res call(
      {List<FreezerItem> freezerItemList,
      List<FridgeItem> fridgeItemList,
      List<CupboardItem> cupboardItemList});
}

/// @nodoc
class _$StockListCopyWithImpl<$Res, $Val extends StockList>
    implements $StockListCopyWith<$Res> {
  _$StockListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? freezerItemList = null,
    Object? fridgeItemList = null,
    Object? cupboardItemList = null,
  }) {
    return _then(_value.copyWith(
      freezerItemList: null == freezerItemList
          ? _value.freezerItemList
          : freezerItemList // ignore: cast_nullable_to_non_nullable
              as List<FreezerItem>,
      fridgeItemList: null == fridgeItemList
          ? _value.fridgeItemList
          : fridgeItemList // ignore: cast_nullable_to_non_nullable
              as List<FridgeItem>,
      cupboardItemList: null == cupboardItemList
          ? _value.cupboardItemList
          : cupboardItemList // ignore: cast_nullable_to_non_nullable
              as List<CupboardItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockListCopyWith<$Res> implements $StockListCopyWith<$Res> {
  factory _$$_StockListCopyWith(
          _$_StockList value, $Res Function(_$_StockList) then) =
      __$$_StockListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FreezerItem> freezerItemList,
      List<FridgeItem> fridgeItemList,
      List<CupboardItem> cupboardItemList});
}

/// @nodoc
class __$$_StockListCopyWithImpl<$Res>
    extends _$StockListCopyWithImpl<$Res, _$_StockList>
    implements _$$_StockListCopyWith<$Res> {
  __$$_StockListCopyWithImpl(
      _$_StockList _value, $Res Function(_$_StockList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? freezerItemList = null,
    Object? fridgeItemList = null,
    Object? cupboardItemList = null,
  }) {
    return _then(_$_StockList(
      freezerItemList: null == freezerItemList
          ? _value._freezerItemList
          : freezerItemList // ignore: cast_nullable_to_non_nullable
              as List<FreezerItem>,
      fridgeItemList: null == fridgeItemList
          ? _value._fridgeItemList
          : fridgeItemList // ignore: cast_nullable_to_non_nullable
              as List<FridgeItem>,
      cupboardItemList: null == cupboardItemList
          ? _value._cupboardItemList
          : cupboardItemList // ignore: cast_nullable_to_non_nullable
              as List<CupboardItem>,
    ));
  }
}

/// @nodoc

class _$_StockList extends _StockList {
  const _$_StockList(
      {final List<FreezerItem> freezerItemList = const <FreezerItem>[],
      final List<FridgeItem> fridgeItemList = const <FridgeItem>[],
      final List<CupboardItem> cupboardItemList = const <CupboardItem>[]})
      : _freezerItemList = freezerItemList,
        _fridgeItemList = fridgeItemList,
        _cupboardItemList = cupboardItemList,
        super._();

  final List<FreezerItem> _freezerItemList;
  @override
  @JsonKey()
  List<FreezerItem> get freezerItemList {
    if (_freezerItemList is EqualUnmodifiableListView) return _freezerItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_freezerItemList);
  }

  final List<FridgeItem> _fridgeItemList;
  @override
  @JsonKey()
  List<FridgeItem> get fridgeItemList {
    if (_fridgeItemList is EqualUnmodifiableListView) return _fridgeItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fridgeItemList);
  }

  final List<CupboardItem> _cupboardItemList;
  @override
  @JsonKey()
  List<CupboardItem> get cupboardItemList {
    if (_cupboardItemList is EqualUnmodifiableListView)
      return _cupboardItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cupboardItemList);
  }

  @override
  String toString() {
    return 'StockList(freezerItemList: $freezerItemList, fridgeItemList: $fridgeItemList, cupboardItemList: $cupboardItemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockList &&
            const DeepCollectionEquality()
                .equals(other._freezerItemList, _freezerItemList) &&
            const DeepCollectionEquality()
                .equals(other._fridgeItemList, _fridgeItemList) &&
            const DeepCollectionEquality()
                .equals(other._cupboardItemList, _cupboardItemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_freezerItemList),
      const DeepCollectionEquality().hash(_fridgeItemList),
      const DeepCollectionEquality().hash(_cupboardItemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockListCopyWith<_$_StockList> get copyWith =>
      __$$_StockListCopyWithImpl<_$_StockList>(this, _$identity);
}

abstract class _StockList extends StockList {
  const factory _StockList(
      {final List<FreezerItem> freezerItemList,
      final List<FridgeItem> fridgeItemList,
      final List<CupboardItem> cupboardItemList}) = _$_StockList;
  const _StockList._() : super._();

  @override
  List<FreezerItem> get freezerItemList;
  @override
  List<FridgeItem> get fridgeItemList;
  @override
  List<CupboardItem> get cupboardItemList;
  @override
  @JsonKey(ignore: true)
  _$$_StockListCopyWith<_$_StockList> get copyWith =>
      throw _privateConstructorUsedError;
}
