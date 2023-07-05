import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/freezer_item.dart';

import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/shared/freezer_item_dto.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final freezerItemRepositoryProvider =
    Provider<FreezerItemRepository>((ref) => FreezerItemRepository(ref));

//Images
//final firebaseStorageFreezerItemProvider =
//    Provider.autoDispose<FirebaseStorage>((ref) {
//  return ref.read(firebaseStorageProvider);
//});

final firebaseFirestoreFreezerItemProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseFreezerItemRepository {
  Future<Either<DatabaseFailure, List<FreezerItem>>> getFreezerItemList();

  Future<Either<DatabaseFailure, FreezerItem>> createFreezerItem(
      {required FreezerItem freezerItem});
  Future<Either<DatabaseFailure, FreezerItem>> updateFreezerItem(
      {required FreezerItem freezerItem});
  Future<Either<DatabaseFailure, FreezerItem>> deleteFreezerItem(
      {required FreezerItem freezerItem});
  Future<Either<DatabaseFailure, FreezerItem>> undoDeleteFreezerItem(
      {required FreezerItem freezerItem});
}

class FreezerItemRepository implements BaseFreezerItemRepository {
  final Ref _ref;
  FreezerItemRepository(this._ref);

  @override
  Future<Either<DatabaseFailure, List<FreezerItem>>>
      getFreezerItemList() async {
    try {
      var q = _ref
          .read(firebaseFirestoreFreezerItemProvider)
          .collection('freezerItemList')
          .orderBy('nameInsensitive', descending: false);
      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => FreezerItemDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((freezerItemList) async => right(freezerItemList));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FreezerItem>> createFreezerItem(
      {required FreezerItem freezerItem}) async {
    try {
      final freezerItemEntry = FreezerItemDTO.fromDomain(freezerItem);
      final docRef = _ref
          .read(firebaseFirestoreFreezerItemProvider)
          .collection('freezerItemList')
          .doc();
      await docRef.set(freezerItemEntry.toDocument());
      return right(freezerItem.copyWith(
          product: freezerItem.product.copyWith(id: docRef.id)));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FreezerItem>> updateFreezerItem(
      {required FreezerItem freezerItem}) async {
    try {
      final freezerItemEntry = FreezerItemDTO.fromDomain(freezerItem);
      final _ = await _ref
          .read(firebaseFirestoreFreezerItemProvider)
          .collection('freezerItemList')
          .doc(freezerItemEntry.id)
          .update(
            freezerItemEntry.toDocument(),
          );
      return right(freezerItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FreezerItem>> deleteFreezerItem(
      {required FreezerItem freezerItem}) async {
    try {
      final freezerItemEntry = FreezerItemDTO.fromDomain(freezerItem);
      final _ = await _ref
          .read(firebaseFirestoreFreezerItemProvider)
          .collection('freezerItemList')
          .doc(freezerItemEntry.id)
          .delete();
      return right(freezerItem);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, FreezerItem>> undoDeleteFreezerItem(
      {required FreezerItem freezerItem}) async {
    try {
      final failureOrSuccess =
          await createFreezerItem(freezerItem: freezerItem);
      return failureOrSuccess.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
