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
  Future<Either<DatabaseFailure, Stock>> getStock();
  Future<Either<DatabaseFailure, Stock>> createStock({required Stock stock});
  Future<Either<DatabaseFailure, Stock>> updateFreezer(
      {required Stock stock, required Map<String, int> freezerList});
  Future<Either<DatabaseFailure, Stock>> updateFridge(
      {required Stock stock, required Map<String, int> fridgeList});
  Future<Either<DatabaseFailure, Stock>> updateCupboard(
      {required Stock stock, required Map<String, int> cupboardList});
}

class StockRepository implements BaseStockRepository {
  final Reader _read;
  StockRepository(this._read);

  @override
  Future<Either<DatabaseFailure, Stock>> getStock() async {
    try {
      var q = _read(firebaseFirestoreStockProvider).collection('stocks');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => StockDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) => right(r.first));
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
  Future<Either<DatabaseFailure, Stock>> updateFreezer(
      {required Map<String, int> freezerList, required Stock stock}) async {
    try {
      final stockEntry =
          StockDTO.fromDomain(stock.copyWith(freezerList: freezerList));
      final _ = await _read(firebaseFirestoreStockProvider)
          .collection('stocks')
          .doc(stockEntry.id)
          .update(
            stockEntry.toDocument(),
            // SetOptions()
          );
      return right(stock.copyWith(freezerList: freezerList));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Stock>> updateFridge(
      {required Map<String, int> fridgeList, required Stock stock}) async {
    try {
      final stockEntry =
          StockDTO.fromDomain(stock.copyWith(fridgeList: fridgeList));
      final _ = await _read(firebaseFirestoreStockProvider)
          .collection('stocks')
          .doc(stockEntry.id)
          .update(
            stockEntry.toDocument(),
            // SetOptions()
          );
      return right(stock.copyWith(fridgeList: fridgeList));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Stock>> updateCupboard(
      {required Map<String, int> cupboardList, required Stock stock}) async {
    try {
      final stockEntry =
          StockDTO.fromDomain(stock.copyWith(cupboardList: cupboardList));
      final _ = await _read(firebaseFirestoreStockProvider)
          .collection('stocks')
          .doc(stockEntry.id)
          .update(
            stockEntry.toDocument(),
            // SetOptions()
          );
      return right(stock.copyWith(cupboardList: cupboardList));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
