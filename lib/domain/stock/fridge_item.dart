import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fridge_item.freezed.dart';

@freezed
class FridgeItem with _$FridgeItem {
  const FridgeItem._();
  const factory FridgeItem({
    @Default(Product()) Product product,
    @Default(0) int amount,
  }) = _FridgeItem;
}
