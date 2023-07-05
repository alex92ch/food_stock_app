import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/stock_list.dart';
import 'package:food_stock_app/infrastructure/shared/cupboard_item_repository.dart';
import 'package:food_stock_app/infrastructure/shared/freezer_item_repository.dart';
import 'package:food_stock_app/infrastructure/shared/fridge_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'almost_out_of_stock_notifier.freezed.dart';

final almostOutOfStockNotifierProvider =
    StateNotifierProvider<AlmosOutOfStockNotifier, AlmosOutOfStockState>(
        (ref) => AlmosOutOfStockNotifier(ref));

@freezed
class AlmosOutOfStockState with _$AlmosOutOfStockState {
  const AlmosOutOfStockState._();
  const factory AlmosOutOfStockState.initial(
    StockList stockList,
  ) = _Initial;
  const factory AlmosOutOfStockState.loadSuccess(
    StockList stockList,
  ) = _LoadSuccess;
  const factory AlmosOutOfStockState.failure(
    StockList stockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory AlmosOutOfStockState.inProgress(
    StockList stockList,
  ) = _InProgress;
}

class AlmosOutOfStockNotifier extends StateNotifier<AlmosOutOfStockState> {
  final Ref _ref;

  AlmosOutOfStockNotifier(this._ref)
      : super(const AlmosOutOfStockState.initial(StockList()));

  Future<void> getAlmostOutOfStockList({bool isloading = false}) async {
    if (isloading) state = const AlmosOutOfStockState.inProgress(StockList());
    final failureOrSuccessFridgeitemList =
        await _ref.read(fridgeItemRepositoryProvider).getFridgeItemList();
    final failureOrSuccessFreezeritemList =
        await _ref.read(freezerItemRepositoryProvider).getFreezerItemList();
    final failureOrSuccessCupboarditemList =
        await _ref.read(cupboardItemRepositoryProvider).getCupboardItemList();
    failureOrSuccessFridgeitemList
        .fold((l) => state = AlmosOutOfStockState.failure(const StockList(), l),
            (fridgeItemList) {
      failureOrSuccessFreezeritemList.fold(
          (l) => state = AlmosOutOfStockState.failure(const StockList(), l),
          (freezerItemList) {
        failureOrSuccessCupboarditemList.fold(
            (l) => state = AlmosOutOfStockState.failure(const StockList(), l),
            (cupboardItemList) {
          return state = AlmosOutOfStockState.loadSuccess(StockList(
              fridgeItemList: fridgeItemList
                  .where((fridgeItem) =>
                      fridgeItem.product.amount <=
                          fridgeItem.product.threshold &&
                      fridgeItem.product.amount != 0)
                  .toList(),
              freezerItemList: freezerItemList
                  .where((freezerItem) =>
                      freezerItem.product.amount <=
                          freezerItem.product.threshold &&
                      freezerItem.product.amount != 0)
                  .toList(),
              cupboardItemList: cupboardItemList
                  .where((cupboardItem) =>
                      cupboardItem.product.amount <=
                          cupboardItem.product.threshold &&
                      cupboardItem.product.amount != 0)
                  .toList()));
        });
      });
    });
  }

  Future<void> setOutOfSync({bool isloading = false}) async {
    state = const AlmosOutOfStockState.inProgress(StockList());
  }
}
