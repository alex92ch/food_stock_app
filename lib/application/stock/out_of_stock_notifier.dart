import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/infrastructure/base_data/product_repository.dart';
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
    List<Product> outOfStockList,
  ) = _Initial;
  const factory OutOfStockState.loadSuccess(
    List<Product> outOfStockList,
  ) = _LoadSuccess;
  const factory OutOfStockState.failure(
    List<Product> outOfStockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory OutOfStockState.inProgress(
    List<Product> outOfStockList,
  ) = _InProgress;
}

class OutOfStockNotifier extends StateNotifier<OutOfStockState> {
  final Reader _read;

  OutOfStockNotifier(this._read) : super(const OutOfStockState.initial([]));

  Future<void> getOutOfStockList({bool isloading = false}) async {
    if (isloading) state = const OutOfStockState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).getProductList();
    failureOrSuccess.fold(
      (l) => state = OutOfStockState.failure([], l),
      (r) => state = OutOfStockState.loadSuccess(
          r.where((product) => product.amount == 0).toList()),
    );
  }
}
