import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
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
    List<Product> fridgeItemList,
  ) = _Initial;
  const factory FridgeItemState.loadSuccess(
    List<Product> fridgeItemList,
  ) = _LoadSuccess;
  const factory FridgeItemState.failure(
    List<Product> fridgeItemList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory FridgeItemState.inProgress(
    List<Product> fridgeItemList,
  ) = _InProgress;
  const factory FridgeItemState.createSuccess(
    List<Product> fridgeItemList,
  ) = _CreateSuccess;
  const factory FridgeItemState.updateSuccess(
    List<Product> fridgeItemList,
  ) = _UpdateSuccess;
}

class FridgeItemNotifier extends StateNotifier<FridgeItemState> {
  final Reader _read;

  FridgeItemNotifier(this._read) : super(const FridgeItemState.initial([]));

  Future<void> getFridgeItemList({bool isloading = false}) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess =
        await _read(fridgeItemRepositoryProvider).getFridgeItemList();
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) => state = FridgeItemState.loadSuccess(r),
    );
  }

  Future<void> createFridgeItem({
    required Product product,
    required List<Product> fridgeItemList,
    bool isloading = false,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).updateProduct(product: product);
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(fridgeItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = FridgeItemState.createSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> increaseFridgeItem({
    required Product product,
    bool isloading = false,
    required List<Product> fridgeItemList,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _read(productRepositoryProvider)
        .updateProduct(product: product.copyWith(amount: product.amount + 1));
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(fridgeItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = FridgeItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> decreaseFridgeItem({
    required Product product,
    bool isloading = false,
    required List<Product> fridgeItemList,
  }) async {
    if (isloading) state = const FridgeItemState.inProgress([]);
    final failureOrSuccess = await _read(productRepositoryProvider)
        .updateProduct(
            product: product.amount != 0
                ? product.copyWith(amount: product.amount - 1)
                : product.copyWith(amount: 0));
    state = failureOrSuccess.fold(
      (l) => state = FridgeItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(fridgeItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = FridgeItemState.updateSuccess(newFreezerItemList);
      },
    );
  }
}
