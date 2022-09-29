import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/base_data/unit_of_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_dto.g.dart';
part 'product_dto.freezed.dart';

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
    @Default(1) int threshold,
    @UnitOfMeasurementConverter()
    @Default(UnitOfMeasurement(amount: 0, measurement: Measurement.liter))
        UnitOfMeasurement unitOfMeasurement,
    // @Default(Storageplace.cupboard)
    required Storageplace storagePlace,
    @Default('') String description,
    @Default(0) int amount,
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
      id: product.id,
      name: product.name,
      threshold: product.threshold,
      unitOfMeasurement: product.unitOfMeasurement,
      storagePlace: product.storagePlace,
      amount: product.amount,
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
      storagePlace: storagePlace,
      description: description,
      amount: amount,
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
      'amount': amount,
      'storagePlace': storagePlace.toString().replaceAll("Storageplace.", ""),
      'description': description,
      'image': image,
      'barcode': barcode,
      'nameInsensitive': nameInsensitive,
    });
  }
}
