import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cupboard_item.freezed.dart';

@freezed
class CupboardItem with _$CupboardItem {
  const CupboardItem._();
  const factory CupboardItem({
    required Product product,
  }) = _CupboardItem;
}
