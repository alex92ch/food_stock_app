import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';
import 'package:food_stock_app/domain/base_data/unit_of_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezer_item_dto.freezed.dart';
part 'freezer_item_dto.g.dart';

class UnitOfMeasurementConverter
    implements JsonConverter<UnitOfMeasurement, Map<String, dynamic>> {
  const UnitOfMeasurementConverter();
  @override
  UnitOfMeasurement fromJson(Map<String, dynamic> unitOfmeasurement) =>
      UnitOfMeasurement(
          amount: unitOfmeasurement['amount'],
          measurement: unitOfmeasurement['measurement'] == "kilogram"
              ? Measurement.kilogram
              : Measurement.liter);
  @override
  Map<String, dynamic> toJson(UnitOfMeasurement unitOfmeasurement) {
    return ({
      'amount': unitOfmeasurement.amount,
      'measurement': unitOfmeasurement.measurement
    });
  }
}

@freezed
class FreezerItemDTO with _$FreezerItemDTO {
  const FreezerItemDTO._();
  const factory FreezerItemDTO({
    @Default('') String id,
    @Default('') String name,
    @Default(1) int threshold,
    @UnitOfMeasurementConverter()
    @Default(UnitOfMeasurement(amount: 0, measurement: Measurement.liter))
        UnitOfMeasurement unitOfMeasurement,
    @Default('') String description,
    @Default(0) int amount,
    @Default(false) bool image, //TODO needs implementation
    @Default(false) bool barcode, //TODO needs implementation
    @Default('') String nameInsensitive,
  }) = _FreezerItemDTO;

  factory FreezerItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FreezerItemDTOFromJson(json);

  factory FreezerItemDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return FreezerItemDTO.fromJson(data).copyWith(id: doc.id);
  }
  factory FreezerItemDTO.fromDomain(FreezerItem freezerItem) {
    return FreezerItemDTO(
      id: freezerItem.product.id,
      name: freezerItem.product.name,
      threshold: freezerItem.product.threshold,
      unitOfMeasurement: freezerItem.product.unitOfMeasurement,
      amount: freezerItem.product.amount,
      description: freezerItem.product.description,
      image: freezerItem.product.image,
      barcode: freezerItem.product.barcode,
      nameInsensitive: freezerItem.product.name.toUpperCase(),
    );
  }
  FreezerItem toDomain() {
    return FreezerItem(
        product: Product(
      id: id,
      name: name,
      threshold: threshold,
      unitOfMeasurement: unitOfMeasurement,
      description: description,
      amount: amount,
      image: image,
      barcode: barcode,
    ));
  }

  Map<String, dynamic> toDocument() {
    return ({
      'name': name,
      'threshold': threshold,
      'unitOfMeasurement': ({
        'amount': unitOfMeasurement.amount,
        'measurement': unitOfMeasurement.measurement
            .toString()
            .replaceAll("Measurement.", "")
      }),
      'amount': amount,
      'description': description,
      'image': image,
      'barcode': barcode,
      'nameInsensitive': nameInsensitive,
    });
  }
}
