import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:food_stock_app/infrastructure/shared/fridge_item_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'fridge_item_notifier.freezed.dart';

final fridgeItemNotifierProvider =
    StateNotifierProvider<FridgeItemNotifier, FridgeItemState>(
        (ref) => FridgeItemNotifier(ref));

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
  const factory FridgeItemState.createSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _CreateSuccess;
  const factory FridgeItemState.updateSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _UpdateSuccess;
  const factory FridgeItemState.deleteSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _DeleteSuccess;
  const factory FridgeItemState.undoDeleteSuccess(
    List<FridgeItem> fridgeItemList,
  ) = _UndoDeleteSuccess;
}

class FridgeItemNotifier extends StateNotifier<FridgeItemState> {
  final Ref _ref;

  FridgeItemNotifier(this._ref) : super(const FridgeItemState.initial([]));

  Future<void> getFridgeItemList({bool isloading = false}) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess =
        await _ref.read(fridgeItemRepositoryProvider).getFridgeItemList();
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) => state = FridgeItemState.loadSuccess(r),
    );
  }

  Future<void> createFridgeItem({
    required FridgeItem fridgeItem,
    required List<FridgeItem> fridgeItemList,
    bool isloading = false,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(fridgeItemRepositoryProvider)
        .createFridgeItem(fridgeItem: fridgeItem);
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<FridgeItem> newFreezerItemList = List.from(fridgeItemList);
        newFreezerItemList.add(r);
        return state = FridgeItemState.createSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> increaseFridgeItem({
    required FridgeItem fridgeItem,
    bool isloading = false,
    required List<FridgeItem> fridgeItemList,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(fridgeItemRepositoryProvider)
        .updateFridgeItem(
            fridgeItem: fridgeItem.copyWith(
                product: fridgeItem.product
                    .copyWith(amount: fridgeItem.product.amount + 1)));
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<FridgeItem> newFreezerItemList = List.from(fridgeItemList);
        newFreezerItemList[newFreezerItemList.indexWhere(
            (element) => element.product.id == fridgeItem.product.id)] = r;
        return state = FridgeItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> decreaseFridgeItem({
    required FridgeItem fridgeItem,
    bool isloading = false,
    required List<FridgeItem> fridgeItemList,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(fridgeItemRepositoryProvider)
        .updateFridgeItem(
            fridgeItem: fridgeItem.product.amount != 0
                ? fridgeItem.copyWith(
                    product: fridgeItem.product
                        .copyWith(amount: fridgeItem.product.amount - 1))
                : fridgeItem.copyWith(
                    product: fridgeItem.product.copyWith(amount: 0)));
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<FridgeItem> newFreezerItemList = List.from(fridgeItemList);
        newFreezerItemList[newFreezerItemList.indexWhere(
            (element) => element.product.id == fridgeItem.product.id)] = r;
        return state = FridgeItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> deleteFridgeItem(
      {required FridgeItem fridgeItem,
      required List<FridgeItem> fridgeItemList,
      bool isloading = false}) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(fridgeItemRepositoryProvider)
        .deleteFridgeItem(fridgeItem: fridgeItem);
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<FridgeItem> newfridgeItemList = List.from(fridgeItemList);
        newfridgeItemList
            .removeWhere((element) => element.product.id == r.product.id);
        return state = FridgeItemState.deleteSuccess(newfridgeItemList);
      },
    );
  }

  Future<void> undoDeleteFridgeItem(
      {required FridgeItem fridgeItem,
      bool isloading = false,
      required List<FridgeItem> fridgeItemList}) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(fridgeItemRepositoryProvider)
        .undoDeleteFridgeItem(fridgeItem: fridgeItem);
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<FridgeItem> newFridgeItemList = List.from(fridgeItemList);
        newFridgeItemList.removeWhere(
            (element) => element.product.id == fridgeItem.product.id);
        newFridgeItemList.add(r);
        newFridgeItemList.sort((a, b) => a.product.name
            .toUpperCase()
            .compareTo(b.product.name.toUpperCase()));
        return state = FridgeItemState.undoDeleteSuccess(newFridgeItemList);
      },
    );
  }
}
