import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/fridge_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'fridge_item_dto.g.dart';
part 'fridge_item_dto.freezed.dart';

@freezed
class FridgeItemDTO with _$FridgeItemDTO {
  const FridgeItemDTO._();
  const factory FridgeItemDTO({
    @Default('') String productID,
    @Default(0) int amount,
  }) = _FridgeItemDTO;
  factory FridgeItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FridgeItemDTOFromJson(json);

  factory FridgeItemDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return FridgeItemDTO.fromJson(data).copyWith(productID: doc.id);
  }
  factory FridgeItemDTO.fromDomain(FridgeItem fridgeItem) => FridgeItemDTO(
        productID: fridgeItem.product.id,
        amount: fridgeItem.amount,
      );

  FridgeItem toDomain() => FridgeItem(
        product: Product(id: productID),
        amount: amount,
      );

  Map<String, dynamic> toDocument() {
    return ({'amount': amount});
  }
}
