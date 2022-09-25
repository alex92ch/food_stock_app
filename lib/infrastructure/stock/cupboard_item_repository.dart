import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/stock/cupboard_item.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/stock/cupboard_item_dto.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final cupboardItemRepositoryProvider =
    Provider<CupboardItemRepository>((ref) => CupboardItemRepository(ref.read));

final firebaseFirestoreCupboardItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseCupboardItemRepository {
  Future<Either<DatabaseFailure, List<CupboardItem>>> getCupboardItemList();

  Future<Either<DatabaseFailure, CupboardItem>> updateCupboardItem({
    required CupboardItem cupboardItem,
  });
}

class CupboardItemRepository implements BaseCupboardItemRepository {
  final Reader _read;
  CupboardItemRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<CupboardItem>>>
      getCupboardItemList() async {
    try {
      var q = _read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardList');

      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => CupboardItemDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) => right(r));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, CupboardItem>> updateCupboardItem(
      {required CupboardItem cupboardItem}) async {
    try {
      final productEntry = CupboardItemDTO.fromDomain(cupboardItem);
      final _ = await _read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardList')
          .doc(productEntry.productID)
          .set(
            productEntry.toDocument(),
          );
      return right(cupboardItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
