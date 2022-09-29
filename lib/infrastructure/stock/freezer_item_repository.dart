import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/infrastructure/base_data/product_dto.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final freezerItemRepositoryProvider =
    Provider<FreezerItemRepository>((ref) => FreezerItemRepository(ref.read));

final firebaseFirestoreFreezerItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseFreezerItemRepository {
  Future<Either<DatabaseFailure, List<Product>>> getFreezerItemList();
}

class FreezerItemRepository implements BaseFreezerItemRepository {
  final Reader _read;
  FreezerItemRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<Product>>> getFreezerItemList() async {
    try {
      var q =
          _read(firebaseFirestoreFreezerItemProvider).collection('freezerList');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => ProductDTO.fromDocument(doc))
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
}
