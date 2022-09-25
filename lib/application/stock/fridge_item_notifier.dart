import 'package:flutter/material.dart';
import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/fridge_item.dart';
import 'package:food_stock_app/infrastructure/base_data/product_repository.dart';
import 'package:food_stock_app/infrastructure/stock/fridge_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'fridge_item_notifier.freezed.dart';

final fridgeItemNotifierProvider =
    StateNotifierProvider<FridgeItemNotifier, FridgeItemState>(
        (ref) => FridgeItemNotifier(ref.read));

@freezed
class FridgeItemState with _$FridgeItemState {
  const FridgeItemState._();
  const factory FridgeItemState.initial(
    List<FridgeItem> fridgeItemList,
  ) = _Initial;
  const factory FridgeItemState.loadSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _LoadSuccess;
  const factory FridgeItemState.failure(
    List<FridgeItem> fridgeItemList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory FridgeItemState.inProgress(
    List<FridgeItem> fridgeItemList,
  ) = _InProgress;
  const factory FridgeItemState.deleteSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _DeleteSuccess;
  const factory FridgeItemState.createSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _CreateSuccess;
  const factory FridgeItemState.undoDeleteFridgeItem(
    List<FridgeItem> fridgeItemList,
  ) = _UndoDeleteSuccess;
  const factory FridgeItemState.updateSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _UpdateSuccess;
}

class FridgeItemNotifier extends StateNotifier<FridgeItemState> {
  final Reader _read;

  FridgeItemNotifier(this._read) : super(const FridgeItemState.initial([]));

  Future<void> getFridgeItemList({bool isloading = false}) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess =
        await _read(fridgeItemRepositoryProvider).getFridgeItemList();
    final productList = await _read(productRepositoryProvider).getProductList();
    productList.fold((l) => FridgeItemState.failure([], l), (productList) {
      state = failureOrSuccess.fold(
        (l) => state = FridgeItemState.failure([], l),
        (r) => state = FridgeItemState.loadSuccess(r.map((fridgeItem) {
          return FridgeItem(
            product: productList
                .firstWhere((product) => product.id == fridgeItem.product.id),
            amount: fridgeItem.amount,
          );
        }).toList()),
      );
    });
  }

  Future<void> addFridgeItem({
    required Product product,
    bool isloading = false,
    required List<FridgeItem> fridgeItemList,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    List<FridgeItem> newfridgeItemList = List.from(fridgeItemList);
    newfridgeItemList.contains(newfridgeItemList.firstWhere(
            (fridgeItem) => fridgeItem.product.id == product.id,
            orElse: () => const FridgeItem()))
        ? newfridgeItemList[newfridgeItemList.indexWhere(
            (fridgeItem) =>
                fridgeItem.product.id == product.id)] = FridgeItem(
            product: product,
            amount: newfridgeItemList[newfridgeItemList.indexWhere(
                        (fridgeItem) => fridgeItem.product.id == product.id)]
                    .amount +
                1)
        : newfridgeItemList.add(FridgeItem(product: product, amount: 1));
    final failureOrSuccess = await _read(fridgeItemRepositoryProvider)
        .updateFridgeItem(
            fridgeItem: newfridgeItemList[newfridgeItemList.indexWhere(
                (fridgeItem) => fridgeItem.product.id == product.id)]);
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) => state = FridgeItemState.updateSuccess(newfridgeItemList),
    );
  }

  Future<void> decreaseFridgeItem({
    required Product product,
    bool isloading = false,
    required List<FridgeItem> fridgeItemList,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    switch (fridgeItemList
            .firstWhere((fridgeItem) => fridgeItem.product.id == product.id)
            .amount ==
        0) {
      case true:
        //TODO throw message (validation)
        state = FridgeItemState.updateSuccess(fridgeItemList);

        break;
      case false:
        List<FridgeItem> newfridgeItemList = List.from(fridgeItemList);
        newfridgeItemList[newfridgeItemList.indexWhere(
            (fridgeItem) =>
                fridgeItem.product.id == product.id)] = FridgeItem(
            product: product,
            amount: newfridgeItemList[newfridgeItemList.indexWhere(
                        (fridgeItem) => fridgeItem.product.id == product.id)]
                    .amount -
                1);
        final failureOrSuccess = await _read(fridgeItemRepositoryProvider)
            .updateFridgeItem(
                fridgeItem: newfridgeItemList[newfridgeItemList.indexWhere(
                    (fridgeItem) => fridgeItem.product.id == product.id)]);
        state = failureOrSuccess.fold(
          (l) => state = FridgeItemState.failure([], l),
          (r) => state = FridgeItemState.updateSuccess(newfridgeItemList),
        );
        break;
    }
  }
}
