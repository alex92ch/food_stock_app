import 'package:food_stock_app/application/base_data/product_notifier.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/cupboard_item.dart';
import 'package:food_stock_app/infrastructure/base_data/product_repository.dart';
import 'package:food_stock_app/infrastructure/stock/cupboard_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'cupboard_item_notifer.freezed.dart';

final cupboardItemNotifierProvider =
    StateNotifierProvider<CupboardItemNotifier, CupboardItemState>(
        (ref) => CupboardItemNotifier(ref.read));

@freezed
class CupboardItemState with _$CupboardItemState {
  const CupboardItemState._();
  const factory CupboardItemState.initial(
    List<CupboardItem> cupboardItemList,
  ) = _Initial;
  const factory CupboardItemState.loadSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _LoadSuccess;
  const factory CupboardItemState.failure(
    List<CupboardItem> cupboardItemList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory CupboardItemState.inProgress(
    List<CupboardItem> cupboardItemList,
  ) = _InProgress;
  const factory CupboardItemState.deleteSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _DeleteSuccess;
  const factory CupboardItemState.createSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _CreateSuccess;
  const factory CupboardItemState.undoDeleteCupboardItem(
    List<CupboardItem> cupboardItemList,
  ) = _UndoDeleteSuccess;
  const factory CupboardItemState.updateSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _UpdateSuccess;
}

class CupboardItemNotifier extends StateNotifier<CupboardItemState> {
  final Reader _read;

  CupboardItemNotifier(this._read) : super(const CupboardItemState.initial([]));

  Future<void> getCupboardItemList({bool isloading = false}) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess =
        await _read(cupboardItemRepositoryProvider).getCupboardItemList();
    final productList = await _read(productRepositoryProvider).getProductList();
    productList.fold((l) => CupboardItemState.failure([], l), (productList) {
      state = failureOrSuccess.fold(
        (l) => state = CupboardItemState.failure([], l),
        (r) => state = CupboardItemState.loadSuccess(r.map((cupboardItem) {
          return CupboardItem(
            product: productList
                .firstWhere((product) => product.id == cupboardItem.product.id),
            amount: cupboardItem.amount,
          );
        }).toList()),
      );
    });
  }

  Future<void> addCupboardItem({
    required Product product,
    bool isloading = false,
    required List<CupboardItem> cupboardItemList,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    List<CupboardItem> newcupboardItemList = List.from(cupboardItemList);
    newcupboardItemList.contains(newcupboardItemList.firstWhere(
            (cupboardItem) => cupboardItem.product.id == product.id,
            orElse: () => const CupboardItem()))
        ? newcupboardItemList[newcupboardItemList.indexWhere(
                (cupboardItem) => cupboardItem.product.id == product.id)] =
            CupboardItem(
                product: product,
                amount: newcupboardItemList[newcupboardItemList.indexWhere(
                            (cupboardItem) =>
                                cupboardItem.product.id == product.id)]
                        .amount +
                    1)
        : newcupboardItemList.add(CupboardItem(product: product, amount: 1));
    final failureOrSuccess = await _read(cupboardItemRepositoryProvider)
        .updateCupboardItem(
            cupboardItem: newcupboardItemList[newcupboardItemList.indexWhere(
                (cupboardItem) => cupboardItem.product.id == product.id)]);
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) => state = CupboardItemState.updateSuccess(newcupboardItemList),
    );
  }

  Future<void> decreaseCupboardItem({
    required Product product,
    bool isloading = false,
    required List<CupboardItem> cupboardItemList,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    switch (cupboardItemList
            .firstWhere((cupboardItem) => cupboardItem.product.id == product.id)
            .amount ==
        0) {
      case true:
        //TODO throw message (validation)
        state = CupboardItemState.updateSuccess(cupboardItemList);

        break;
      case false:
        List<CupboardItem> newcupboardItemList = List.from(cupboardItemList);
        newcupboardItemList[newcupboardItemList.indexWhere(
                (cupboardItem) => cupboardItem.product.id == product.id)] =
            CupboardItem(
                product: product,
                amount: newcupboardItemList[newcupboardItemList.indexWhere(
                            (cupboardItem) =>
                                cupboardItem.product.id == product.id)]
                        .amount -
                    1);
        final failureOrSuccess = await _read(cupboardItemRepositoryProvider)
            .updateCupboardItem(
                cupboardItem: newcupboardItemList[
                    newcupboardItemList.indexWhere((cupboardItem) =>
                        cupboardItem.product.id == product.id)]);
        state = failureOrSuccess.fold(
          (l) => state = CupboardItemState.failure([], l),
          (r) => state = CupboardItemState.updateSuccess(newcupboardItemList),
        );
        break;
    }
  }
}
