import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/stock/freezer_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezer_item_dto.g.dart';
part 'freezer_item_dto.freezed.dart';

@freezed
class FreezerItemDTO with _$FreezerItemDTO {
  const FreezerItemDTO._();
  const factory FreezerItemDTO({
    @Default('') String productID,
    @Default(0) int amount,
  }) = _FreezerItemDTO;
  factory FreezerItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FreezerItemDTOFromJson(json);

  factory FreezerItemDTO.fromDocument(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
    return FreezerItemDTO.fromJson(data).copyWith(productID: doc.id);
  }
  factory FreezerItemDTO.fromDomain(FreezerItem freezerItem) => FreezerItemDTO(
        productID: freezerItem.product.id,
        amount: freezerItem.amount,
      );

  FreezerItem toDomain() => FreezerItem(
        product: Product(id: productID),
        amount: amount,
      );

  Map<String, dynamic> toDocument() {
    return ({'amount': amount});
  }
}
