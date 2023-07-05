import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:food_stock_app/domain/base_data/unit_of_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'fridge_item_dto.freezed.dart';
part 'fridge_item_dto.g.dart';

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
class FridgeItemDTO with _$FridgeItemDTO {
  const FridgeItemDTO._();
  const factory FridgeItemDTO({
    @Default('') String id,
    @Default('') String name,
    @Default(1) int threshold,
    @UnitOfMeasurementConverter()
    @Default(UnitOfMeasurement(amount: 0, measurement: Measurement.liter))
    UnitOfMeasurement unitOfMeasurement,
    @Default('') String description,
    @Default(0) int amount,
    @Default(false) bool image, //TODO needs implementation
    @Default('') String barcode,
    @Default('') String nameInsensitive,
  }) = _FridgeItemDTO;

  factory FridgeItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FridgeItemDTOFromJson(json);

  factory FridgeItemDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return FridgeItemDTO.fromJson(data).copyWith(id: doc.id);
  }
  factory FridgeItemDTO.fromDomain(FridgeItem fridgeItem) {
    return FridgeItemDTO(
      id: fridgeItem.product.id,
      name: fridgeItem.product.name,
      threshold: fridgeItem.product.threshold,
      unitOfMeasurement: fridgeItem.product.unitOfMeasurement,
      amount: fridgeItem.product.amount,
      description: fridgeItem.product.description,
      image: fridgeItem.product.image,
      barcode: fridgeItem.product.barcode,
      nameInsensitive: fridgeItem.product.name.toUpperCase(),
    );
  }
  FridgeItem toDomain() {
    return FridgeItem(
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
