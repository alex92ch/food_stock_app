import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/fridge_item.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/shared/fridge_item_dto.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final fridgeItemRepositoryProvider =
    Provider<FridgeItemRepository>((ref) => FridgeItemRepository(ref.read));

//Images
//final firebaseStorageFridgeItemProvider =
//    Provider.autoDispose<FirebaseStorage>((ref) {
//  return ref.read(firebaseStorageProvider);
//});

final firebaseFirestoreFridgeItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseFridgeItemRepository {
  Future<Either<DatabaseFailure, List<FridgeItem>>> getFridgeItemList();

  Future<Either<DatabaseFailure, FridgeItem>> createFridgeItem(
      {required FridgeItem fridgeItem});
  Future<Either<DatabaseFailure, FridgeItem>> updateFridgeItem(
      {required FridgeItem fridgeItem});
  Future<Either<DatabaseFailure, FridgeItem>> deleteFridgeItem(
      {required FridgeItem fridgeItem});
  Future<Either<DatabaseFailure, FridgeItem>> undoDeleteFridgeItem(
      {required FridgeItem fridgeItem});
}

class FridgeItemRepository implements BaseFridgeItemRepository {
  final Reader _read;
  FridgeItemRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<FridgeItem>>> getFridgeItemList() async {
    try {
      var q = _read(firebaseFirestoreFridgeItemProvider)
          .collection('fridgeItemList')
          .orderBy('nameInsensitive', descending: false);
      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => FridgeItemDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((fridgeItemList) async => right(fridgeItemList));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FridgeItem>> createFridgeItem(
      {required FridgeItem fridgeItem}) async {
    try {
      final fridgeItemEntry = FridgeItemDTO.fromDomain(fridgeItem);
      final docRef = _read(firebaseFirestoreFridgeItemProvider)
          .collection('fridgeItemList')
          .doc();
      await docRef.set(fridgeItemEntry.toDocument());
      return right(fridgeItem.copyWith(
          product: fridgeItem.product.copyWith(id: docRef.id)));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FridgeItem>> updateFridgeItem(
      {required FridgeItem fridgeItem}) async {
    try {
      final fridgeItemEntry = FridgeItemDTO.fromDomain(fridgeItem);
      final _ = await _read(firebaseFirestoreFridgeItemProvider)
          .collection('fridgeItemList')
          .doc(fridgeItemEntry.id)
          .update(
            fridgeItemEntry.toDocument(),
          );
      return right(fridgeItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FridgeItem>> deleteFridgeItem(
      {required FridgeItem fridgeItem}) async {
    try {
      final fridgeItemEntry = FridgeItemDTO.fromDomain(fridgeItem);
      final _ = await _read(firebaseFirestoreFridgeItemProvider)
          .collection('fridgeItemList')
          .doc(fridgeItemEntry.id)
          .delete();
      return right(fridgeItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FridgeItem>> undoDeleteFridgeItem(
      {required FridgeItem fridgeItem}) async {
    try {
      final failureOrSuccess = await createFridgeItem(fridgeItem: fridgeItem);
      return failureOrSuccess.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
