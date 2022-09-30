import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/infrastructure/base_data/product_dto.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final cupboardItemRepositoryProvider =
    Provider<CupboardItemRepository>((ref) => CupboardItemRepository(ref.read));

final firebaseFirestoreCupboardItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseCupboardItemRepository {
  Future<Either<DatabaseFailure, List<Product>>> getCupboardItemList();
}

class CupboardItemRepository implements BaseCupboardItemRepository {
  final Reader _read;
  CupboardItemRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<Product>>> getCupboardItemList() async {
    try {
      var q = _read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardList');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => ProductDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) => right(r));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
