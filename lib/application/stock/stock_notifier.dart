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

  Future<void> increaseFridgeitem({
    required String productID,
    bool isloading = false,
    required Stock stock,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    Map<String, int> fridgeList = Map.of(stock.fridgeList);
    fridgeList[productID] = fridgeList[productID]! + 1;
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStockitem(
      stock: stock,
      freezerList: stock.freezerList,
      fridgeList: fridgeList,
      cupboardList: stock.cupboardList,
    );
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> decreaseFridgeitem({
    required String productID,
    bool isloading = false,
    required Stock stock,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    Map<String, int> fridgeList = Map.of(stock.fridgeList);
    fridgeList[productID]! - 1 <= 0
        ? fridgeList.remove(productID)
        : fridgeList[productID] = fridgeList[productID]! - 1;
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStockitem(
      stock: stock,
      freezerList: stock.freezerList,
      fridgeList: fridgeList,
      cupboardList: stock.cupboardList,
    );
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> increaseFreezeritem({
    required String productID,
    bool isloading = false,
    required Stock stock,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    Map<String, int> freezerList = Map.of(stock.freezerList);
    freezerList[productID] = freezerList[productID]! + 1;
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStockitem(
      stock: stock,
      freezerList: freezerList,
      fridgeList: stock.fridgeList,
      cupboardList: stock.cupboardList,
    );
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> decreaseFreezeritem({
    required String productID,
    bool isloading = false,
    required Stock stock,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    Map<String, int> freezerList = Map.of(stock.freezerList);
    freezerList[productID]! - 1 <= 0
        ? freezerList.remove(productID)
        : freezerList[productID] = freezerList[productID]! - 1;
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStockitem(
      stock: stock,
      freezerList: freezerList,
      fridgeList: stock.fridgeList,
      cupboardList: stock.cupboardList,
    );
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> increaseCupboarditem({
    required String productID,
    bool isloading = false,
    required Stock stock,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    Map<String, int> cupboardList = Map.of(stock.cupboardList);
    cupboardList[productID] = cupboardList[productID]! + 1;
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStockitem(
      stock: stock,
      freezerList: stock.freezerList,
      fridgeList: stock.fridgeList,
      cupboardList: cupboardList,
    );
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }

  Future<void> decreaseCupboarditem({
    required String productID,
    bool isloading = false,
    required Stock stock,
  }) async {
    if (isloading) state = const StockState.inProgress(Stock());
    Map<String, int> cupboardList = Map.of(stock.cupboardList);
    cupboardList[productID]! - 1 <= 0
        ? cupboardList.remove(productID)
        : cupboardList[productID] = cupboardList[productID]! - 1;
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStockitem(
      stock: stock,
      freezerList: stock.freezerList,
      fridgeList: stock.fridgeList,
      cupboardList: cupboardList,
    );
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure(const Stock(), l),
      (r) => state = StockState.updateSuccess(r),
    );
  }
}
