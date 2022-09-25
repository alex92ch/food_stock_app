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

part 'almost_out_of_stock_notifier.freezed.dart';

final almostOutOfStockNotifierProvider =
    StateNotifierProvider<AlmostOutOfStockNotifier, AlmostOutOfStockState>(
        (ref) => AlmostOutOfStockNotifier(ref.read));

@freezed
class AlmostOutOfStockState with _$AlmostOutOfStockState {
  const AlmostOutOfStockState._();
  const factory AlmostOutOfStockState.initial(
    List<Product> almostOutOfStockList,
  ) = _Initial;
  const factory AlmostOutOfStockState.loadSuccess(
    List<Product> almostOutOfStockList,
  ) = _LoadSuccess;
  const factory AlmostOutOfStockState.failure(
    List<Product> almostOutOfStockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory AlmostOutOfStockState.inProgress(
    List<Product> almostOutOfStockList,
  ) = _InProgress;
}

class AlmostOutOfStockNotifier extends StateNotifier<AlmostOutOfStockState> {
  final Reader _read;

  AlmostOutOfStockNotifier(this._read)
      : super(const AlmostOutOfStockState.initial([]));

  Future<void> getAlmostOutOfStockList({bool isloading = false}) async {
    if (isloading) state = const AlmostOutOfStockState.inProgress([]);
    final fridgeItemList =
        await _read(fridgeItemRepositoryProvider).getFridgeItemList();
    final freezerItemList =
        await _read(freezerItemRepositoryProvider).getFreezerItemList();
    final cupboardItemList =
        await _read(cupboardItemRepositoryProvider).getCupboardItemList();
    final productList = await _read(productRepositoryProvider).getProductList();
    productList.fold((l) => state = AlmostOutOfStockState.failure([], l),
        (productList) {
      return state = freezerItemList
          .fold((l) => state = AlmostOutOfStockState.failure([], l),
              (freezerItemList) {
        return state = cupboardItemList
            .fold((l) => state = AlmostOutOfStockState.failure([], l),
                (cupboardItemList) {
          return state = fridgeItemList
              .fold((l) => state = AlmostOutOfStockState.failure([], l),
                  (fridgeItemList) {
            List<FridgeItem> almostOutOfStockFridgeItemList = List.from(
              fridgeItemList.where((fridgeItem) =>
                  fridgeItem.amount <=
                  productList
                      .firstWhere(
                          (product) => product.id == fridgeItem.product.id)
                      .threshold),
            );
            List<FreezerItem> almostOutOfStockFreezerItemList = List.from(
              freezerItemList.where((freezerItem) =>
                  freezerItem.amount <=
                  productList
                      .firstWhere(
                          (product) => product.id == freezerItem.product.id)
                      .threshold),
            );
            List<CupboardItem> almostOutOfStockCupboardItemList = List.from(
              cupboardItemList.where((cupboardItem) =>
                  cupboardItem.amount <=
                  productList
                      .firstWhere(
                          (product) => product.id == cupboardItem.product.id)
                      .threshold),
            );
            List<Product> almostOutOfStockList = [];
            return state = AlmostOutOfStockState.loadSuccess(
              almostOutOfStockList
                ..addAll(
                  productList.where((product) =>
                      product.id ==
                      almostOutOfStockFridgeItemList
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
                      almostOutOfStockFreezerItemList
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
                      almostOutOfStockCupboardItemList
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
