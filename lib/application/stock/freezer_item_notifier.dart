import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
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
    List<Product> freezerItemList,
  ) = _Initial;
  const factory FreezerItemState.loadSuccess(
    List<Product> freezerItemList,
  ) = _LoadSuccess;
  const factory FreezerItemState.failure(
    List<Product> freezerItemList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory FreezerItemState.inProgress(
    List<Product> freezerItemList,
  ) = _InProgress;
  const factory FreezerItemState.createSuccess(
    List<Product> freezerItemList,
  ) = _CreateSuccess;
  const factory FreezerItemState.updateSuccess(
    List<Product> freezerItemList,
  ) = _UpdateSuccess;
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
    required Product product,
    required List<Product> freezerItemList,
    bool isloading = false,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).updateProduct(product: product);
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = FreezerItemState.createSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> increaseFreezerItem({
    required Product product,
    bool isloading = false,
    required List<Product> freezerItemList,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(productRepositoryProvider)
        .updateProduct(product: product.copyWith(amount: product.amount + 1));
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = FreezerItemState.updateSuccess(newFreezerItemList);
      },
    );
  }

  Future<void> decreaseFreezerItem({
    required Product product,
    bool isloading = false,
    required List<Product> freezerItemList,
  }) async {
    if (isloading) state = const FreezerItemState.inProgress([]);
    final failureOrSuccess = await _read(productRepositoryProvider)
        .updateProduct(
            product: product.amount != 0
                ? product.copyWith(amount: product.amount - 1)
                : product.copyWith(amount: 0));
    state = failureOrSuccess.fold(
      (l) => state = FreezerItemState.failure([], l),
      (r) {
        List<Product> newFreezerItemList = List.from(freezerItemList);
        newFreezerItemList[newFreezerItemList
            .indexWhere((element) => element.id == product.id)] = r;
        return state = FreezerItemState.updateSuccess(newFreezerItemList);
      },
    );
  }
}
