import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/cupboard_item.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/infrastructure/shared/cupboard_item_dto.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final cupboardItemRepositoryProvider =
    Provider<CupboardItemRepository>((ref) => CupboardItemRepository(ref));

//Images
//final firebaseStorageCupboardItemProvider =
//    Provider.autoDispose<FirebaseStorage>((ref) {
//  return ref.read(firebaseStorageProvider);
//});

final firebaseFirestoreCupboardItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseCupboardItemRepository {
  Future<Either<DatabaseFailure, List<CupboardItem>>> getCupboardItemList();

  Future<Either<DatabaseFailure, CupboardItem>> createCupboardItem(
      {required CupboardItem cupboardItem});
  Future<Either<DatabaseFailure, CupboardItem>> updateCupboardItem(
      {required CupboardItem cupboardItem});
  Future<Either<DatabaseFailure, CupboardItem>> deleteCupboardItem(
      {required CupboardItem cupboardItem});
  Future<Either<DatabaseFailure, CupboardItem>> undoDeleteCupboardItem(
      {required CupboardItem cupboardItem});
}

class CupboardItemRepository implements BaseCupboardItemRepository {
  final Ref _ref;
  CupboardItemRepository(this._ref);

  @override
  Future<Either<DatabaseFailure, List<CupboardItem>>>
      getCupboardItemList() async {
    try {
      var q = _ref
          .read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardItemList')
          .orderBy('nameInsensitive', descending: false);
      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => CupboardItemDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((cupboardItemList) async => right(cupboardItemList));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, CupboardItem>> createCupboardItem(
      {required CupboardItem cupboardItem}) async {
    try {
      final cupboardItemEntry = CupboardItemDTO.fromDomain(cupboardItem);
      final docRef = _ref
          .read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardItemList')
          .doc();
      await docRef.set(cupboardItemEntry.toDocument());
      return right(cupboardItem.copyWith(
          product: cupboardItem.product.copyWith(id: docRef.id)));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, CupboardItem>> updateCupboardItem(
      {required CupboardItem cupboardItem}) async {
    try {
      final cupboardItemEntry = CupboardItemDTO.fromDomain(cupboardItem);
      final _ = await _ref
          .read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardItemList')
          .doc(cupboardItemEntry.id)
          .update(
            cupboardItemEntry.toDocument(),
          );
      return right(cupboardItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, CupboardItem>> deleteCupboardItem(
      {required CupboardItem cupboardItem}) async {
    try {
      final cupboardItemEntry = CupboardItemDTO.fromDomain(cupboardItem);
      final _ = await _ref
          .read(firebaseFirestoreCupboardItemProvider)
          .collection('cupboardItemList')
          .doc(cupboardItemEntry.id)
          .delete();
      return right(cupboardItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, CupboardItem>> undoDeleteCupboardItem(
      {required CupboardItem cupboardItem}) async {
    try {
      final failureOrSuccess =
          await createCupboardItem(cupboardItem: cupboardItem);
      return failureOrSuccess.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
