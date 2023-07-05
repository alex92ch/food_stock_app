import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/base_data/unit_of_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cupboard_item_dto.freezed.dart';
part 'cupboard_item_dto.g.dart';

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
class CupboardItemDTO with _$CupboardItemDTO {
  const CupboardItemDTO._();
  const factory CupboardItemDTO({
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
  }) = _CupboardItemDTO;

  factory CupboardItemDTO.fromJson(Map<String, dynamic> json) =>
      _$CupboardItemDTOFromJson(json);

  factory CupboardItemDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return CupboardItemDTO.fromJson(data).copyWith(id: doc.id);
  }
  factory CupboardItemDTO.fromDomain(CupboardItem cupboardItem) {
    return CupboardItemDTO(
      id: cupboardItem.product.id,
      name: cupboardItem.product.name,
      threshold: cupboardItem.product.threshold,
      unitOfMeasurement: cupboardItem.product.unitOfMeasurement,
      amount: cupboardItem.product.amount,
      description: cupboardItem.product.description,
      image: cupboardItem.product.image,
      barcode: cupboardItem.product.barcode,
      nameInsensitive: cupboardItem.product.name.toUpperCase(),
    );
  }
  CupboardItem toDomain() {
    return CupboardItem(
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
