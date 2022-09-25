import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/cupboard_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cupboard_item_dto.g.dart';
part 'cupboard_item_dto.freezed.dart';

@freezed
class CupboardItemDTO with _$CupboardItemDTO {
  const CupboardItemDTO._();
  const factory CupboardItemDTO({
    @Default('') String productID,
    @Default(0) int amount,
  }) = _CupboardItemDTO;
  factory CupboardItemDTO.fromJson(Map<String, dynamic> json) =>
      _$CupboardItemDTOFromJson(json);

  factory CupboardItemDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return CupboardItemDTO.fromJson(data).copyWith(productID: doc.id);
  }
  factory CupboardItemDTO.fromDomain(CupboardItem cupboardItem) =>
      CupboardItemDTO(
        productID: cupboardItem.product.id,
        amount: cupboardItem.amount,
      );

  CupboardItem toDomain() => CupboardItem(
        product: Product(id: productID),
        amount: amount,
      );

  Map<String, dynamic> toDocument() {
    return ({'amount': amount});
  }
}
