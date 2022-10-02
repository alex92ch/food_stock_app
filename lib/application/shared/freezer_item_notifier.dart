import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';
import 'package:food_stock_app/infrastructure/shared/freezer_item_repository.dart';

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
  const factory FreezerItemState.createSuccess(
    List<FreezerItem> freezerItemList,
  ) = _CreateSuccess;
  const factory FreezerItemState.updateSuccess(
    List<FreezerItem> freezerItemList,
  ) = _UpdateSuccess;
  const factory FreezerItemState.deleteSuccess(
    List<FreezerItem> freezerItemList,
  ) = _DeleteSuccess;
  const factory FreezerItemState.undoDeleteSuccess(
    List<FreezerItem> freezerItemList,
  ) = _UndoDeleteSuccess;
}

class FreezerItemNotifier extends StateNotifier<FreezerItemState> {
  final Reader _read;

  FreezerItemNotifier(this._read) : super(const FreezerItemState.initial([]));

  Future<void> getFreezerItemList({bool isloading = false}) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess =
        await _read(freezerItemRepositoryProvider).getFreezerItemList();
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) => state = FreezerItemState.loadSuccess(r),
    );
  }

  Future<void> createFreezerItem({
    required FreezerItem freezerItem,
    required List<FreezerItem> freezerItemList,
    bool isloading = false,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(freezerItemRepositoryProvider)
        .createFreezerItem(freezerItem: freezerItem);
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<FreezerItem> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList.add(r);
        return state = FreezerItemState.createSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> increaseFreezerItem({
    required FreezerItem freezerItem,
    bool isloading = false,
    required List<FreezerItem> freezerItemList,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(freezerItemRepositoryProvider)
        .updateFreezerItem(
            freezerItem: freezerItem.copyWith(
                product: freezerItem.product
                    .copyWith(amount: freezerItem.product.amount + 1)));
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<FreezerItem> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList[newFreezerItemList.indexWhere(
            (element) => element.product.id == freezerItem.product.id)] = r;
        return state = FreezerItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> decreaseFreezerItem({
    required FreezerItem freezerItem,
    bool isloading = false,
    required List<FreezerItem> freezerItemList,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(freezerItemRepositoryProvider)
        .updateFreezerItem(
            freezerItem: freezerItem.product.amount != 0
                ? freezerItem.copyWith(
                    product: freezerItem.product
                        .copyWith(amount: freezerItem.product.amount - 1))
                : freezerItem.copyWith(
                    product: freezerItem.product.copyWith(amount: 0)));
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<FreezerItem> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList[newFreezerItemList.indexWhere(
            (element) => element.product.id == freezerItem.product.id)] = r;
        return state = FreezerItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> deleteFreezerItem(
      {required FreezerItem freezerItem,
      required List<FreezerItem> freezerItemList,
      bool isloading = false}) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(freezerItemRepositoryProvider)
        .deleteFreezerItem(freezerItem: freezerItem);
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<FreezerItem> newfreezerItemList = List.from(freezerItemList);
        newfreezerItemList
            .removeWhere((element) => element.product.id == r.product.id);
        return state = FreezerItemState.deleteSuccess(newfreezerItemList);
      },
    );
  }

  Future<void> undoDeleteFreezerItem(
      {required FreezerItem freezerItem,
      bool isloading = false,
      required List<FreezerItem> freezerItemList}) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(freezerItemRepositoryProvider)
        .undoDeleteFreezerItem(freezerItem: freezerItem);
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<FreezerItem> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList.removeWhere(
            (element) => element.product.id == freezerItem.product.id);
        newFreezerItemList.add(r);
        newFreezerItemList.sort((a, b) => a.product.name
            .toUpperCase()
            .compareTo(b.product.name.toUpperCase()));
        return state = FreezerItemState.undoDeleteSuccess(newFreezerItemList);
      },
    );
  }
}
