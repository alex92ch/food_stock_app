import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:food_stock_app/infrastructure/stock/stock_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'stock_notifier.freezed.dart';

final stockNotifierProvider = StateNotifierProvider<StockNotifier, StockState>(
    (ref) => StockNotifier(ref.read));

@freezed
class StockState with _$StockState {
  const StockState._();
  const factory StockState.initial(
    Stock stock,
  ) = _Initial;
  const factory StockState.loadSuccess(
    Stock stock,
  ) = _LoadSuccess;
  const factory StockState.failure(
    Stock stock,
    DatabaseFailure failure,
  ) = _Failure;
  const factory StockState.inProgress(
    Stock stock,
  ) = _InProgress;
  const factory StockState.createSuccess(
    Stock stock,
  ) = _CreateSuccess;
  const factory StockState.updateSuccess(
    Stock stock,
  ) = _UpdateSuccess;
}

class StockNotifier extends StateNotifier<StockState> {
  final Reader _read;

  StockNotifier(this._read) : super(const StockState.initial(Stock()));

  Future<void> getStock({bool isloading = false}) async {
    if (isloading) state = const StockState.inProgress(Stock());
    final failureOrSuccess = await _read(stockRepositoryProvider).getStock();
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.loadSuccess(r),
    );
  }

  Future<void> createStock({
    bool isloading = false,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    final failureOrSuccess =
        await _read(stockRepositoryProvider).createStock(stock: const Stock());
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) {
        return state = StockState.createSuccess(r);
      },
    );
  }

  Future<void> updateFreezer({
    required Stock stock,
    bool isloading = false,
    required Map<String, int> freezerList,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    final failureOrSuccess = await _read(stockRepositoryProvider)
        .updateFreezer(freezerList: freezerList, stock: stock);
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> updateFridge({
    required Stock stock,
    bool isloading = false,
    required Map<String, int> fridgeList,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    final failureOrSuccess = await _read(stockRepositoryProvider)
        .updateFridge(fridgeList: fridgeList, stock: stock);
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> updateCupboard({
    required Stock stock,
    bool isloading = false,
    required Map<String, int> cupboardList,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    final failureOrSuccess = await _read(stockRepositoryProvider)
        .updateCupboard(cupboardList: cupboardList, stock: stock);
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }
}
