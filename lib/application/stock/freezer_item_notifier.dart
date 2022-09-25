import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/freezer_item.dart';
import 'package:food_stock_app/infrastructure/base_data/product_repository.dart';
import 'package:food_stock_app/infrastructure/stock/freezer_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'freezer_item_notifier.freezed.dart';

final freezerItemNotifierProvider =
    StateNotifierProvider<FreezerItemNotifier, FreezerItemState>(
        (ref) => FreezerItemNotifier(ref.read));

@freezed
class FreezerItemState with _$FreezerItemState {
  const FreezerItemState._();
  const factory FreezerItemState.initial(
    List<FreezerItem> freezerItemList,
  ) = _Initial;
  const factory FreezerItemState.loadSuccess(
    List<FreezerItem> freezerItemList,
  ) = _LoadSuccess;
  const factory FreezerItemState.failure(
    List<FreezerItem> freezerItemList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory FreezerItemState.inProgress(
    List<FreezerItem> freezerItemList,
  ) = _InProgress;
  const factory FreezerItemState.deleteSuccess(
    List<FreezerItem> freezerItemList,
  ) = _DeleteSuccess;
  const factory FreezerItemState.createSuccess(
    List<FreezerItem> freezerItemList,
  ) = _CreateSuccess;
  const factory FreezerItemState.undoDeleteFreezerItem(
    List<FreezerItem> freezerItemList,
  ) = _UndoDeleteSuccess;
  const factory FreezerItemState.updateSuccess(
    List<FreezerItem> freezerItemList,
  ) = _UpdateSuccess;
}

class FreezerItemNotifier extends StateNotifier<FreezerItemState> {
  final Reader _read;

  FreezerItemNotifier(this._read) : super(const FreezerItemState.initial([]));

  Future<void> getFreezerItemList({bool isloading = false}) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess =
        await _read(freezerItemRepositoryProvider).getFreezerItemList();
    final productList = await _read(productRepositoryProvider).getProductList();
    productList.fold((l) => FreezerItemState.failure([], l), (productList) {
      state = failureOrSuccess.fold(
        (l) => state = FreezerItemState.failure([], l),
        (r) => state = FreezerItemState.loadSuccess(r.map((freezerItem) {
          return FreezerItem(
            product: productList
                .firstWhere((product) => product.id == freezerItem.product.id),
            amount: freezerItem.amount,
          );
        }).toList()),
      );
    });
  }

  Future<void> addFreezerItem({
    required Product product,
    bool isloading = false,
    required List<FreezerItem> freezerItemList,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    List<FreezerItem> newfreezerItemList = List.from(freezerItemList);
    newfreezerItemList.contains(newfreezerItemList.firstWhere(
            (freezerItem) => freezerItem.product.id == product.id,
            orElse: () => const FreezerItem()))
        ? newfreezerItemList[newfreezerItemList.indexWhere(
            (freezerItem) =>
                freezerItem.product.id == product.id)] = FreezerItem(
            product: product,
            amount: newfreezerItemList[newfreezerItemList.indexWhere(
                        (freezerItem) => freezerItem.product.id == product.id)]
                    .amount +
                1)
        : newfreezerItemList.add(FreezerItem(product: product, amount: 1));
    final failureOrSuccess = await _read(freezerItemRepositoryProvider)
        .updateFreezerItem(
            freezerItem: newfreezerItemList[newfreezerItemList.indexWhere(
                (freezerItem) => freezerItem.product.id == product.id)]);
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) => state = FreezerItemState.updateSuccess(newfreezerItemList),
    );
  }

  Future<void> decreaseFreezerItem({
    required Product product,
    bool isloading = false,
    required List<FreezerItem> freezerItemList,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    switch (freezerItemList
            .firstWhere((freezerItem) => freezerItem.product.id == product.id)
            .amount ==
        0) {
      case true:
        //TODO throw message (validation)
        state = FreezerItemState.updateSuccess(freezerItemList);

        break;
      case false:
        List<FreezerItem> newfreezerItemList = List.from(freezerItemList);
        newfreezerItemList[newfreezerItemList.indexWhere(
            (freezerItem) =>
                freezerItem.product.id == product.id)] = FreezerItem(
            product: product,
            amount: newfreezerItemList[newfreezerItemList.indexWhere(
                        (freezerItem) => freezerItem.product.id == product.id)]
                    .amount -
                1);
        final failureOrSuccess = await _read(freezerItemRepositoryProvider)
            .updateFreezerItem(
                freezerItem: newfreezerItemList[newfreezerItemList.indexWhere(
                    (freezerItem) => freezerItem.product.id == product.id)]);
        state = failureOrSuccess.fold(
          (l) => state = FreezerItemState.failure([], l),
          (r) => state = FreezerItemState.updateSuccess(newfreezerItemList),
        );
        break;
    }
  }
}
