import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/infrastructure/base_data/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'almost_out_of_stock_notifier.freezed.dart';

final almostOutOfStockNotifierProvider =
    StateNotifierProvider<AlmostOutOfStockNotifier, AlmostOutOfStockState>(
        (ref) => AlmostOutOfStockNotifier(ref.read));

@freezed
class AlmostOutOfStockState with _$AlmostOutOfStockState {
  const AlmostOutOfStockState._();
  const factory AlmostOutOfStockState.initial(
    List<Product> almostOutOfStockList,
  ) = _Initial;
  const factory AlmostOutOfStockState.loadSuccess(
    List<Product> almostOutOfStockList,
  ) = _LoadSuccess;
  const factory AlmostOutOfStockState.failure(
    List<Product> almostOutOfStockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory AlmostOutOfStockState.inProgress(
    List<Product> almostOutOfStockList,
  ) = _InProgress;
}

class AlmostOutOfStockNotifier extends StateNotifier<AlmostOutOfStockState> {
  final Reader _read;

  AlmostOutOfStockNotifier(this._read)
      : super(const AlmostOutOfStockState.initial([]));

  Future<void> getAlmostOutOfStockList({bool isloading = false}) async {
    if (isloading) state = const AlmostOutOfStockState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).getProductList();
    failureOrSuccess.fold(
      (l) => state = AlmostOutOfStockState.failure([], l),
      (r) => state = AlmostOutOfStockState.loadSuccess(r
          .where((product) =>
              product.amount <= product.threshold && product.amount != 0)
          .toList()),
    );
  }
}
