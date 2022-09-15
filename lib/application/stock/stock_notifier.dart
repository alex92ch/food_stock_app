import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:food_stock_app/infrastructure/stock/stock_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'stock_notifier.freezed.dart';

final stocksNotifierProvider = StateNotifierProvider<StockNotifier, StockState>(
    (ref) => StockNotifier(ref.read));

@freezed
class StockState with _$StockState {
  const StockState._();
  const factory StockState.initial(
    List<Stock> stockList,
  ) = _Initial;
  const factory StockState.loadSuccess(
    List<Stock> stockList,
  ) = _LoadSuccess;
  const factory StockState.failure(
    List<Stock> stockList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory StockState.inProgress(
    List<Stock> stockList,
  ) = _InProgress;
  // const factory StockState.deleteSuccess(
  //   List<Stock> stockList,
  // ) = _DeleteSuccess;
  const factory StockState.createSuccess(
    List<Stock> stockList,
  ) = _CreateSuccess;
  // const factory StockState.undoDeleteStock(
  //   List<Stock> stockList,
  // ) = _UndoDeleteSuccess;
  const factory StockState.updateSuccess(
    List<Stock> stockList,
  ) = _UpdateSuccess;
}

class StockNotifier extends StateNotifier<StockState> {
  final Reader _read;

  StockNotifier(this._read) : super(const StockState.initial([]));

  Future<void> getStockList({bool isloading = false}) async {
    if (isloading) state = const StockState.inProgress([]);
    final failureOrSuccess =
        await _read(stockRepositoryProvider).getStockList();
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure([], l),
      (r) => state = StockState.loadSuccess(r),
    );
  }

  Future<void> createStock(
      {required Stock stock,
      bool isloading = false,
      required List<Stock> stockList}) async {
    if (isloading) state = const StockState.inProgress([]);
    final failureOrSuccess =
        await _read(stockRepositoryProvider).createStock(stock: stock);
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure([], l),
      (r) {
        List<Stock> newStockList = List.from(stockList);
        newStockList.add(r);
        return state = StockState.createSuccess(newStockList);
      },
    );
  }

  Future<void> updateStock({
    required Stock stock,
    bool isloading = false,
    required List<Stock> stockList,
  }) async {
    if (isloading) state = const StockState.inProgress([]);
    final failureOrSuccess =
        await _read(stockRepositoryProvider).updateStock(stock: stock);
    state = failureOrSuccess.fold(
      (l) => state = StockState.failure([], l),
      (r) {
        List<Stock> newStockList = List.from(stockList);
        newStockList[
            newStockList.indexWhere((element) => element.id == stock.id)] = r;
        return state = StockState.updateSuccess(newStockList);
      },
    );
  }

  // Future<void> deleteStock(
  //     {required Stock stock,
  //     required List<Stock> stockList,
  //     bool isloading = false}) async {
  //   if (isloading) state = const StockState.inProgress([]);
  //   final failureOrSuccess =
  //       await _read(stockRepositoryProvider).deleteStock(stock: stock);
  //   state = failureOrSuccess.fold(
  //     (l) => state = StockState.failure([], l),
  //     (r) {
  //       List<Stock> newStockList = List.from(stockList);
  //       newStockList.removeWhere((element) => element.id == r.id);
  //       return state = StockState.deleteSuccess(newStockList);
  //     },
  //   );
}

  // Future<void> undoDeleteStock(
  //     {required Stock stock,
  //     bool isloading = false,
  //     required List<Stock> stockList}) async {
  //   if (isloading) state = const StockState.inProgress([]);
  //   final failureOrSuccess =
  //       await _read(stockRepositoryProvider).undoDeleteStock(stock: stock);
  //   state = failureOrSuccess.fold(
  //     (l) => state = StockState.failure([], l),
  //     (r) {
  //       List<Stock> newStockList = List.from(stockList);
  //       newStockList.removeWhere((element) => element.id == stock.id);
  //       newStockList.add(r);
  //       newStockList.sort(
  //           (a, b) => a.name.toUpperCase().compareTo(b.name.toUpperCase()));
  //       return state = StockState.undoDeleteStock(newStockList);
  //     },
  //   );
  // }

