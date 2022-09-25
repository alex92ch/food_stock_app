import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/freezer_item.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/stock/freezer_item_dto.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final freezerItemRepositoryProvider =
    Provider<FreezerItemRepository>((ref) => FreezerItemRepository(ref.read));

final firebaseFirestoreFreezerItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseFreezerItemRepository {
  Future<Either<DatabaseFailure, List<FreezerItem>>> getFreezerItemList();
  Future<Either<DatabaseFailure, FreezerItem>> updateFreezerItem({
    required FreezerItem freezerItem,
  });
}

class FreezerItemRepository implements BaseFreezerItemRepository {
  final Reader _read;
  FreezerItemRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<FreezerItem>>>
      getFreezerItemList() async {
    try {
      var q =
          _read(firebaseFirestoreFreezerItemProvider).collection('freezerList');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => FreezerItemDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) {
        return right(r);
      });
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FreezerItem>> updateFreezerItem(
      {required FreezerItem freezerItem}) async {
    try {
      final productEntry = FreezerItemDTO.fromDomain(freezerItem);
      final _ = await _read(firebaseFirestoreFreezerItemProvider)
          .collection('freezerList')
          .doc(productEntry.productID)
          .set(
            productEntry.toDocument(),
          );
      return right(freezerItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
