import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/domain/shared/unit_of_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

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
class ProductDTO with _$ProductDTO {
  const ProductDTO._();
  const factory ProductDTO({
    @Default('') String id,
    @Default('') String name,
    @Default(1) double threshold,
    @UnitOfMeasurementConverter()
    @Default(UnitOfMeasurement(amount: 0, measurement: Measurement.kilogram))
        UnitOfMeasurement unitOfMeasurement,
    @Default(Storageplace.fridge) Storageplace storageplace,
    @Default('') String description,
    @Default(false) bool image, //TODO needs implementation
    @Default(false) bool barcode, //TODO needs implementation
    @Default('') String nameInsensitive,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);

  factory ProductDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return ProductDTO.fromJson(data).copyWith(id: doc.id);
  }
  factory ProductDTO.fromDomain(Product product) {
    return ProductDTO(
      name: product.name,
      threshold: product.threshold,
      unitOfMeasurement: product.unitOfMeasurement,
      storageplace: product.storageplace,
      description: product.description,
      image: product.image,
      barcode: product.barcode,
      nameInsensitive: product.name.toUpperCase(),
    );
  }
  Product toDomain() {
    return Product(
      id: id,
      name: name,
      threshold: threshold,
      unitOfMeasurement: unitOfMeasurement,
      storageplace: storageplace,
      description: description,
      image: image,
      barcode: barcode,
    );
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
      'storagePlace': storageplace.toString().replaceAll("Storageplace.", ""),
      'description': description,
      'image': image,
      'barcode': barcode,
      'nameInsensitive': nameInsensitive,
    });
  }
}
