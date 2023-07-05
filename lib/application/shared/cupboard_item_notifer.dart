import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/infrastructure/shared/cupboard_item_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'cupboard_item_notifer.freezed.dart';

final cupboardItemNotifierProvider =
    StateNotifierProvider<CupboardItemNotifier, CupboardItemState>(
        (ref) => CupboardItemNotifier(ref));

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
  const factory CupboardItemState.createSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _CreateSuccess;
  const factory CupboardItemState.updateSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _UpdateSuccess;
  const factory CupboardItemState.deleteSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _DeleteSuccess;
  const factory CupboardItemState.undoDeleteSuccess(
    List<CupboardItem> cupboardItemList,
  ) = _UndoDeleteSuccess;
}

class CupboardItemNotifier extends StateNotifier<CupboardItemState> {
  final Ref _ref;

  CupboardItemNotifier(this._ref) : super(const CupboardItemState.initial([]));

  Future<void> getCupboardItemList({bool isloading = false}) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess =
        await _ref.read(cupboardItemRepositoryProvider).getCupboardItemList();
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) => state = CupboardItemState.loadSuccess(r),
    );
  }

  Future<void> createCupboardItem({
    required CupboardItem cupboardItem,
    required List<CupboardItem> cupboardItemList,
    bool isloading = false,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(cupboardItemRepositoryProvider)
        .createCupboardItem(cupboardItem: cupboardItem);
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<CupboardItem> newFreezerItemList = List.from(cupboardItemList);
        newFreezerItemList.add(r);
        return state = CupboardItemState.createSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> increaseCupboardItem({
    required CupboardItem cupboardItem,
    bool isloading = false,
    required List<CupboardItem> cupboardItemList,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(cupboardItemRepositoryProvider)
        .updateCupboardItem(
            cupboardItem: cupboardItem.copyWith(
                product: cupboardItem.product
                    .copyWith(amount: cupboardItem.product.amount + 1)));
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<CupboardItem> newFreezerItemList = List.from(cupboardItemList);
        newFreezerItemList[newFreezerItemList.indexWhere(
            (element) => element.product.id == cupboardItem.product.id)] = r;
        return state = CupboardItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> decreaseCupboardItem({
    required CupboardItem cupboardItem,
    bool isloading = false,
    required List<CupboardItem> cupboardItemList,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(cupboardItemRepositoryProvider)
        .updateCupboardItem(
            cupboardItem: cupboardItem.product.amount != 0
                ? cupboardItem.copyWith(
                    product: cupboardItem.product
                        .copyWith(amount: cupboardItem.product.amount - 1))
                : cupboardItem.copyWith(
                    product: cupboardItem.product.copyWith(amount: 0)));
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<CupboardItem> newFreezerItemList = List.from(cupboardItemList);
        newFreezerItemList[newFreezerItemList.indexWhere(
            (element) => element.product.id == cupboardItem.product.id)] = r;
        return state = CupboardItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> deleteCupboardItem(
      {required CupboardItem cupboardItem,
      required List<CupboardItem> cupboardItemList,
      bool isloading = false}) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(cupboardItemRepositoryProvider)
        .deleteCupboardItem(cupboardItem: cupboardItem);
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<CupboardItem> newcupboardItemList = List.from(cupboardItemList);
        newcupboardItemList
            .removeWhere((element) => element.product.id == r.product.id);
        return state = CupboardItemState.deleteSuccess(newcupboardItemList);
      },
    );
  }

  Future<void> undoDeleteCupboardItem(
      {required CupboardItem cupboardItem,
      bool isloading = false,
      required List<CupboardItem> cupboardItemList}) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _ref
        .read(cupboardItemRepositoryProvider)
        .undoDeleteCupboardItem(cupboardItem: cupboardItem);
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<CupboardItem> newCupboardItemList = List.from(cupboardItemList);
        newCupboardItemList.removeWhere(
            (element) => element.product.id == cupboardItem.product.id);
        newCupboardItemList.add(r);
        newCupboardItemList.sort((a, b) => a.product.name
            .toUpperCase()
            .compareTo(b.product.name.toUpperCase()));
        return state = CupboardItemState.undoDeleteSuccess(newCupboardItemList);
      },
    );
  }
}
