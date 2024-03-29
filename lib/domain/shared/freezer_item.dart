import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezer_item.freezed.dart';

@freezed
class FreezerItem with _$FreezerItem {
  const FreezerItem._();
  const factory FreezerItem({
    required Product product,
  }) = _FreezerItem;
}
