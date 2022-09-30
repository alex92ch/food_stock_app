import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
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
    List<Product> cupboardItemList,
  ) = _Initial;
  const factory CupboardItemState.loadSuccess(
    List<Product> cupboardItemList,
  ) = _LoadSuccess;
  const factory CupboardItemState.failure(
    List<Product> cupboardItemList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory CupboardItemState.inProgress(
    List<Product> cupboardItemList,
  ) = _InProgress;
  const factory CupboardItemState.createSuccess(
    List<Product> cupboardItemList,
  ) = _CreateSuccess;
  const factory CupboardItemState.updateSuccess(
    List<Product> cupboardItemList,
  ) = _UpdateSuccess;
}

class CupboardItemNotifier extends StateNotifier<CupboardItemState> {
  final Reader _read;

  CupboardItemNotifier(this._read) : super(const CupboardItemState.initial([]));

  Future<void> getCupboardItemList({bool isloading = false}) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess =
        await _read(cupboardItemRepositoryProvider).getCupboardItemList();
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) => state = CupboardItemState.loadSuccess(r),
    );
  }

  Future<void> createCupboardItem({
    required Product product,
    required List<Product> cupboardItemList,
    bool isloading = false,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).updateProduct(product: product);
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<Product> newCupboardItemList = List.from(cupboardItemList);
        newCupboardItemList[newCupboardItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = CupboardItemState.createSuccess(newCupboardItemList);
      },
    );
  }

  Future<void> increaseCupboardItem({
    required Product product,
    bool isloading = false,
    required List<Product> cupboardItemList,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _read(productRepositoryProvider)
        .updateProduct(product: product.copyWith(amount: product.amount + 1));
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(cupboardItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = CupboardItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> decreaseCupboardItem({
    required Product product,
    bool isloading = false,
    required List<Product> cupboardItemList,
  }) async {
    if (isloading) state = const CupboardItemState.inProgress([]);
    final failureOrSuccess = await _read(productRepositoryProvider)
        .updateProduct(
            product: product.amount != 0
                ? product.copyWith(amount: product.amount - 1)
                : product.copyWith(amount: 0));
    state = failureOrSuccess.fold(
      (l) => state = CupboardItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(cupboardItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = CupboardItemState.updateSuccess(newFreezerItemList);
      },
    );
  }
}
