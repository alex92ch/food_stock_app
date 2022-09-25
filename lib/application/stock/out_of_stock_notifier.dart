import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/cupboard_item.dart';
import 'package:food_stock_app/domain/stock/freezer_item.dart';
import 'package:food_stock_app/domain/stock/fridge_item.dart';
import 'package:food_stock_app/infrastructure/base_data/product_repository.dart';
import 'package:food_stock_app/infrastructure/stock/cupboard_item_repository.dart';
import 'package:food_stock_app/infrastructure/stock/freezer_item_repository.dart';
import 'package:food_stock_app/infrastructure/stock/fridge_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'out_of_stock_notifier.freezed.dart';

final outOfStockNotifierProvider =
    StateNotifierProvider<OutOfStockNotifier, OutOfStockState>(
        (ref) => OutOfStockNotifier(ref.read));

@freezed
class OutOfStockState with _$OutOfStockState {
  const OutOfStockState._();
  const factory OutOfStockState.initial(
    List<Product> outOfStockList,
  ) = _Initial;
  const factory OutOfStockState.loadSuccess(
    List<Product> outOfStockList,
  ) = _LoadSuccess;
  const factory OutOfStockState.failure(
    List<Product> outOfStockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory OutOfStockState.inProgress(
    List<Product> outOfStockList,
  ) = _InProgress;
}

class OutOfStockNotifier extends StateNotifier<OutOfStockState> {
  final Reader _read;

  OutOfStockNotifier(this._read) : super(const OutOfStockState.initial([]));

  Future<void> getOutOfStockList({bool isloading = false}) async {
    if (isloading) state = const OutOfStockState.inProgress([]);
    final fridgeItemList =
        await _read(fridgeItemRepositoryProvider).getFridgeItemList();
    final freezerItemList =
        await _read(freezerItemRepositoryProvider).getFreezerItemList();
    final cupboardItemList =
        await _read(cupboardItemRepositoryProvider).getCupboardItemList();
    final productList = await _read(productRepositoryProvider).getProductList();
    productList.fold((l) => state = OutOfStockState.failure([], l),
        (productList) {
      return state = freezerItemList.fold(
          (l) => state = OutOfStockState.failure([], l), (freezerItemList) {
        return state = cupboardItemList.fold(
            (l) => state = OutOfStockState.failure([], l), (cupboardItemList) {
          return state = fridgeItemList.fold(
              (l) => state = OutOfStockState.failure([], l), (fridgeItemList) {
            List<FridgeItem> outOfStockFridgeItemList = List.from(
                fridgeItemList.where((fridgeItem) => fridgeItem.amount == 0));
            List<FreezerItem> outOfStockFreezerItemList = List.from(
                freezerItemList
                    .where((freezerItem) => freezerItem.amount == 0));
            List<CupboardItem> outOfStockCupboardItemList = List.from(
                cupboardItemList
                    .where((cupboardItem) => cupboardItem.amount == 0));
            List<Product> outOfStockList = [];
            return state = OutOfStockState.loadSuccess(
              outOfStockList
                ..addAll(
                  productList.where((product) =>
                      product.id ==
                      outOfStockFridgeItemList
                          .firstWhere(
                            (fridgeItem) => fridgeItem.product.id == product.id,
                            orElse: () => const FridgeItem(),
                          )
                          .product
                          .id),
                )
                ..addAll(
                  productList.where((product) =>
                      product.id ==
                      outOfStockFreezerItemList
                          .firstWhere(
                            (freezerItem) =>
                                freezerItem.product.id == product.id,
                            orElse: () => const FreezerItem(),
                          )
                          .product
                          .id),
                )
                ..addAll(
                  productList.where((product) =>
                      product.id ==
                      outOfStockCupboardItemList
                          .firstWhere(
                            (cupboardItem) =>
                                cupboardItem.product.id == product.id,
                            orElse: () => const CupboardItem(),
                          )
                          .product
                          .id),
                ),
            );
          });
        });
      });
    });
  }
}
