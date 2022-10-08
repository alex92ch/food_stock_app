// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezer_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreezerItemDTO _$$_FreezerItemDTOFromJson(Map<String, dynamic> json) =>
    _$_FreezerItemDTO(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      threshold: json['threshold'] as int? ?? 1,
      unitOfMeasurement: json['unitOfMeasurement'] == null
          ? const UnitOfMeasurement(amount: 0, measurement: Measurement.liter)
          : const UnitOfMeasurementConverter()
              .fromJson(json['unitOfMeasurement'] as Map<String, dynamic>),
      description: json['description'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      image: json['image'] as bool? ?? false,
      barcode: json['barcode'] as String? ?? '',
      nameInsensitive: json['nameInsensitive'] as String? ?? '',
    );

Map<String, dynamic> _$$_FreezerItemDTOToJson(_$_FreezerItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'threshold': instance.threshold,
      'unitOfMeasurement':
          const UnitOfMeasurementConverter().toJson(instance.unitOfMeasurement),
      'description': instance.description,
      'amount': instance.amount,
      'image': instance.image,
      'barcode': instance.barcode,
      'nameInsensitive': instance.nameInsensitive,
    };
