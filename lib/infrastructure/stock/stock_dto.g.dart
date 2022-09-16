// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockDTO _$$_StockDTOFromJson(Map<String, dynamic> json) => _$_StockDTO(
      id: json['id'] as String? ?? '',
      cupboardList: (json['cupboardList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {},
      freezerList: (json['freezerList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {},
      fridgeList: (json['fridgeList'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_StockDTOToJson(_$_StockDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cupboardList': instance.cupboardList,
      'freezerList': instance.freezerList,
      'fridgeList': instance.fridgeList,
    };
