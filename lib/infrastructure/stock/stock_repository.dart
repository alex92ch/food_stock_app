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
  Future<Either<DatabaseFailure, Stock>> updateStockitem({
    required Stock stock,
    required Map<String, int> fridgeList,
    required Map<String, int> freezerList,
    required Map<String, int> cupboardList,
  });
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
  Future<Either<DatabaseFailure, Stock>> updateStockitem({
    required Stock stock,
    required Map<String, int> fridgeList,
    required Map<String, int> freezerList,
    required Map<String, int> cupboardList,
  }) async {
    try {
      final stockEntry = StockDTO.fromDomain(stock.copyWith(
        fridgeList: fridgeList,
        freezerList: freezerList,
        cupboardList: cupboardList,
      ));
      final _ = await _read(firebaseFirestoreStockProvider)
          .collection('stocks')
          .doc(stockEntry.id)
          .update(
            stockEntry.toDocument(),
          );
      return right(stock.copyWith(
        fridgeList: fridgeList,
        cupboardList: cupboardList,
        freezerList: freezerList,
      ));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
