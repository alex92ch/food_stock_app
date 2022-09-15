import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'stock_dto.freezed.dart';

@freezed
class StockDTO with _$StockDTO {
  const StockDTO._();
  const factory StockDTO({
    @Default('') String id,
    @Default({}) Map<String, int> cupboard,
    @Default({}) Map<String, int> freezer,
    @Default({}) Map<String, int> fridge,
  }) = _StockDTO;
  factory StockDTO.fromJson(Map<String, dynamic> json) =>
      _$StockDTOFromJson(json);

  factory StockDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return StockDTO.fromJson(data).copyWith(id: doc.id);
  }
  factory StockDTO.fromDomain(Stock stock) {
    return StockDTO(
      id: stock.id,
      cupboard: stock.cupboard,
      freezer: stock.freezer,
      fridge: stock.fridge,
    );
  }
  Stock toDomain() {
    return Stock(
      id: id,
      cupboard: cupboard,
      freezer: freezer,
      fridge: fridge,
    );
  }

  Map<String, dynamic> toDocument() {
    return ({
      'cupboard': cupboard,
      'freezer': freezer,
      'fridge': fridge,
    });
  }
}
