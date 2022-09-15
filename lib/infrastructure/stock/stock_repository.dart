import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/stock.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/stock/stock_dto.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final stockRepositoryProvider =
    Provider<StockRepository>((ref) => StockRepository(ref.read));

final firebaseFirestoreStockProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseStockRepository {
  Future<Either<DatabaseFailure, List<Stock>>> getStockList();
  Future<Either<DatabaseFailure, Stock>> createStock({required Stock stock});
  Future<Either<DatabaseFailure, Stock>> updateStock({required Stock stock});
  // Future<Either<DatabaseFailure, Stock>> deleteStock({required Stock stock});
  // Future<Either<DatabaseFailure, Stock>> undoDeleteStock(
  //     {required Stock stock});
}

class StockRepository implements BaseStockRepository {
  final Reader _read;
  StockRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<Stock>>> getStockList() async {
    try {
      var q = _read(firebaseFirestoreStockProvider).collection('stocks');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => StockDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) => right(r));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Stock>> createStock(
      {required Stock stock}) async {
    try {
      final stockEntry = StockDTO.fromDomain(stock);
      final docRef =
          _read(firebaseFirestoreStockProvider).collection('stocks').doc();

      await docRef.set(stockEntry.toDocument());
      return right(stock.copyWith(id: docRef.id));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Stock>> updateStock(
      {required Stock stock}) async {
    try {
      final stockEntry = StockDTO.fromDomain(stock);
      final _ = await _read(firebaseFirestoreStockProvider)
          .collection('stocks')
          .doc(stockEntry.id)
          .update(
            stockEntry.toDocument(),
          );
      return right(stock);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  // @override
  // Future<Either<DatabaseFailure, Stock>> deleteStock(
  //     {required Stock stock}) async {
  //   try {
  //     final stockEntry = StockDTO.fromDomain(stock);
  //     final _ = await _read(firebaseFirestoreStockProvider)
  //         .collection('stocks')
  //         .doc(stockEntry.id)
  //         .delete();
  //     return right(stock);
  //   } on Exception catch (e) {
  //     return left(handleDatabaseFailure(e));
  //   }
  // }

  // @override
  // Future<Either<DatabaseFailure, Stock>> undoDeleteStock(
  //     {required Stock stock}) async {
  //   try {
  //     final failureOrSuccess = await createStock(stock: stock);
  //     return failureOrSuccess.fold(
  //       (l) => left(l),
  //       (r) => right(r),
  //     );
  //   } on Exception catch (e) {
  //     return left(handleDatabaseFailure(e));
  //   }
  // }
}
