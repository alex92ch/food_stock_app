import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_list.freezed.dart';

@freezed
class StockList with _$StockList {
  const StockList._();
  const factory StockList({
    @Default(<FreezerItem>[]) List<FreezerItem> freezerItemList,
    @Default(<FridgeItem>[]) List<FridgeItem> fridgeItemList,
    @Default(<CupboardItem>[]) List<CupboardItem> cupboardItemList,
  }) = _StockList;
}
