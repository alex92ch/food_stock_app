// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      threshold: json['threshold'] as int? ?? 1,
      unitOfMeasurement: json['unitOfMeasurement'] == null
          ? const UnitOfMeasurement(amount: 0, measurement: Measurement.liter)
          : const UnitOfMeasurementConverter()
              .fromJson(json['unitOfMeasurement'] as Map<String, dynamic>),
      storagePlace: $enumDecode(_$StorageplaceEnumMap, json['storagePlace']),
      description: json['description'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      image: json['image'] as bool? ?? false,
      barcode: json['barcode'] as bool? ?? false,
      nameInsensitive: json['nameInsensitive'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'threshold': instance.threshold,
      'unitOfMeasurement':
          const UnitOfMeasurementConverter().toJson(instance.unitOfMeasurement),
      'storagePlace': _$StorageplaceEnumMap[instance.storagePlace]!,
      'description': instance.description,
      'amount': instance.amount,
      'image': instance.image,
      'barcode': instance.barcode,
      'nameInsensitive': instance.nameInsensitive,
    };

const _$StorageplaceEnumMap = {
  Storageplace.cupboard: 'cupboard',
  Storageplace.fridge: 'fridge',
  Storageplace.freezer: 'freezer',
};
