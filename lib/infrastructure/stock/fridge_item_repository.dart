import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/fridge_item.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/stock/fridge_item_dto.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final fridgeItemRepositoryProvider =
    Provider<FridgeItemRepository>((ref) => FridgeItemRepository(ref.read));

final firebaseFirestoreFridgeItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseFridgeItemRepository {
  Future<Either<DatabaseFailure, List<FridgeItem>>> getFridgeItemList();

  Future<Either<DatabaseFailure, FridgeItem>> updateFridgeItem({
    required FridgeItem fridgeItem,
  });
}

class FridgeItemRepository implements BaseFridgeItemRepository {
  final Reader _read;
  FridgeItemRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<FridgeItem>>> getFridgeItemList() async {
    try {
      var q =
          _read(firebaseFirestoreFridgeItemProvider).collection('fridgeList');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => FridgeItemDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) => right(r));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FridgeItem>> updateFridgeItem(
      {required FridgeItem fridgeItem}) async {
    try {
      final productEntry = FridgeItemDTO.fromDomain(fridgeItem);
      final _ = await _read(firebaseFirestoreFridgeItemProvider)
          .collection('fridgeList')
          .doc(productEntry.productID)
          .set(
            productEntry.toDocument(),
          );
      return right(fridgeItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
