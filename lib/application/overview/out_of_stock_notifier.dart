import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/stock_list.dart';
import 'package:food_stock_app/infrastructure/shared/cupboard_item_repository.dart';
import 'package:food_stock_app/infrastructure/shared/freezer_item_repository.dart';
import 'package:food_stock_app/infrastructure/shared/fridge_item_repository.dart';
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
    StockList stockList,
  ) = _Initial;
  const factory OutOfStockState.loadSuccess(
    StockList stockList,
  ) = _LoadSuccess;
  const factory OutOfStockState.failure(
    StockList stockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory OutOfStockState.inProgress(
    StockList stockList,
  ) = _InProgress;
}

class OutOfStockNotifier extends StateNotifier<OutOfStockState> {
  final Reader _read;

  OutOfStockNotifier(this._read)
      : super(const OutOfStockState.initial(StockList()));

  Future<void> getOutOfStockList({bool isloading = false}) async {
    if (isloading) state = const OutOfStockState.inProgress(StockList());
    final failureOrSuccessFridgeitemList =
        await _read(fridgeItemRepositoryProvider).getFridgeItemList();
    final failureOrSuccessFreezeritemList =
        await _read(freezerItemRepositoryProvider).getFreezerItemList();
    final failureOrSuccessCupboarditemList =
        await _read(cupboardItemRepositoryProvider).getCupboardItemList();
    failureOrSuccessFridgeitemList
        .fold((l) => state = OutOfStockState.failure(const StockList(), l),
            (fridgeItemList) {
      failureOrSuccessFreezeritemList
          .fold((l) => state = OutOfStockState.failure(const StockList(), l),
              (freezerItemList) {
        failureOrSuccessCupboarditemList
            .fold((l) => state = OutOfStockState.failure(const StockList(), l),
                (cupboardItemList) {
          return state = OutOfStockState.loadSuccess(StockList(
              fridgeItemList: fridgeItemList
                  .where((fridgeItem) => fridgeItem.product.amount == 0)
                  .toList(),
              freezerItemList: freezerItemList
                  .where((freezerItem) => freezerItem.product.amount == 0)
                  .toList(),
              cupboardItemList: cupboardItemList
                  .where((cupboardItem) => cupboardItem.product.amount == 0)
                  .toList()));
        });
      });
    });
  }

  Future<void> setOutOfSync({bool isloading = false}) async {
    state = const OutOfStockState.inProgress(StockList());
  }
}
