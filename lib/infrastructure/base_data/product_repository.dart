import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:food_stock_app/infrastructure/base_data/product_dto.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

//Repository
final productRepositoryProvider =
    Provider<ProductRepository>((ref) => ProductRepository(ref.read));

//Images
//final firebaseStorageProductProvider =
//    Provider.autoDispose<FirebaseStorage>((ref) {
//  return ref.read(firebaseStorageProvider);
//});

final firebaseFirestoreProductProvider =
    Provider.autoDispose<FirebaseFirestore>((ref) {
  return ref.read(firebaseFirestoreProvider);
});

abstract class BaseProductRepository {
  Future<Either<DatabaseFailure, List<Product>>> getProductList();

  Future<Either<DatabaseFailure, Product>> createProduct(
      {required Product product});
  Future<Either<DatabaseFailure, Product>> updateProduct(
      {required Product product});
  Future<Either<DatabaseFailure, Product>> deleteProduct(
      {required Product product});
  Future<Either<DatabaseFailure, Product>> undoDeleteProduct(
      {required Product product});
}

class ProductRepository implements BaseProductRepository {
  final Reader _read;
  ProductRepository(this._read);

  @override
  Future<Either<DatabaseFailure, List<Product>>> getProductList() async {
    try {
      List<Product> newProductList = [];
      var q = _read(firebaseFirestoreProductProvider)
          .collection('fridgeList')
          .orderBy('nameInsensitive', descending: false);
      return await q
          .get()
          .then((value) => value.docs
              .map((doc) => ProductDTO.fromDocument(doc))
              .toList()
              .map((e) => e.toDomain())
              .toList())
          .then((r) async {
        newProductList.addAll(r);
        var q = _read(firebaseFirestoreProductProvider)
            .collection('freezerList')
            .orderBy('nameInsensitive', descending: false);
        return await q
            .get()
            .then((value) => value.docs
                .map((doc) => ProductDTO.fromDocument(doc))
                .toList()
                .map((e) => e.toDomain())
                .toList())
            .then((r) async {
          newProductList.addAll(r);
          var q = _read(firebaseFirestoreProductProvider)
              .collection('cupboardList')
              .orderBy('nameInsensitive', descending: false);
          return await q
              .get()
              .then((value) => value.docs
                  .map((doc) => ProductDTO.fromDocument(doc))
                  .toList()
                  .map((e) => e.toDomain())
                  .toList())
              .then((r) {
            newProductList.addAll(r);
            return right(newProductList);
          });
        });
      });
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Product>> createProduct(
      {required Product product}) async {
    try {
      final doc = product.storagePlace == Storageplace.freezer
          ? 'freezerList'
          : product.storagePlace == Storageplace.fridge
              ? 'fridgeList'
              : 'cupboardList';
      final productEntry = ProductDTO.fromDomain(product);
      final docRef =
          _read(firebaseFirestoreProductProvider).collection(doc).doc();
      await docRef.set(productEntry.toDocument());
      return right(product.copyWith(id: docRef.id));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Product>> updateProduct(
      {required Product product}) async {
    try {
      final doc = product.storagePlace == Storageplace.freezer
          ? 'freezerList'
          : product.storagePlace == Storageplace.fridge
              ? 'fridgeList'
              : 'cupboardList';
      final productEntry = ProductDTO.fromDomain(product);
      final _ = await _read(firebaseFirestoreProductProvider)
          .collection(doc)
          .doc(productEntry.id)
          .update(
            productEntry.toDocument(),
          );
      return right(product);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Product>> deleteProduct(
      {required Product product}) async {
    try {
      final doc = product.storagePlace == Storageplace.freezer
          ? 'freezerList'
          : product.storagePlace == Storageplace.fridge
              ? 'fridgeList'
              : 'cupboardList';
      final productEntry = ProductDTO.fromDomain(product);
      final _ = await _read(firebaseFirestoreProductProvider)
          .collection(doc)
          .doc(productEntry.id)
          .delete();
      return right(product);
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  @override
  Future<Either<DatabaseFailure, Product>> undoDeleteProduct(
      {required Product product}) async {
    try {
      final failureOrSuccess = await createProduct(product: product);
      return failureOrSuccess.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }
}
