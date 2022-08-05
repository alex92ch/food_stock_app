import 'package:dartz/dartz.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/infrastructure/shared/firebase_providers.dart';
import 'package:food_stock_app/infrastructure/shared/product_dto.dart';

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
  // Future<Either<DatabaseFailure, List<Product>>> getProductList(
  //     {required int pageSize, required Product pageKey});

  Future<Either<DatabaseFailure, Product>> createProduct(
      {required Product product});
  // Future<Either<DatabaseFailure, Product>> updateProduct(
  //     {required Product product});
  // Future<Either<DatabaseFailure, Product>> deleteProduct(
  //     {required Product product});
}

class ProductRepository implements BaseProductRepository {
  final Reader _read;
  ProductRepository(this._read);

  // @override
  // Future<Either<DatabaseFailure, List<Product>>> getProductList(
  //     {required int pageSize, Product? pageKey}) async {
  //   try {
  //     var q = _read(firebaseFirestoreProductProvider)
  //         .collection('products')
  //         .orderBy('date', descending: true);

  //     q = q.limit(pageSize);

  //     q = pageKey!.id.isNotEmpty
  //         ? q.startAfterDocument(await _read(firebaseFirestoreProductProvider)
  //             .collection('products')
  //             .doc(pageKey.id)
  //             .get())
  //         : q;

  //     return await q
  //         .get()
  //         .then((value) => value.docs
  //             .map((doc) => ProductDTO.fromDocument(doc))
  //             .toList()
  //             .map((e) => e.toDomain())
  //             .toList())
  //         .then((r) => right(r));
  //   } on Exception catch (e) {
  //     return left(handleDatabaseFailure(e));
  //   }
  // }

  @override
  Future<Either<DatabaseFailure, Product>> createProduct(
      {required Product product}) async {
    try {
      final productEntry = ProductDTO.fromDomain(product);
      final docRef =
          _read(firebaseFirestoreProductProvider).collection('products').doc();

      await docRef.set(productEntry.toDocument());
      return right(await _read(firebaseFirestoreProductProvider)
          .collection('products')
          .doc(docRef.id)
          .get()
          .then((doc) => ProductDTO.fromDocument(doc).toDomain()));
    } on Exception catch (e) {
      return left(handleDatabaseFailure(e));
    }
  }

  // @override
  // Future<Either<DatabaseFailure, Product>> updateProduct(
  //     {required Product product}) async {
  //   try {
  //     final productEntry = ProductDTO.fromDomain(product);
  //     final _ = await _read(firebaseFirestoreProductProvider)
  //         .collection('products')
  //         .doc(productEntry.id)
  //         .update(
  //           productEntry.toDocument(),
  //         );
  //     return right(product);
  //   } on Exception catch (e) {
  //     return left(handleDatabaseFailure(e));
  //   }
  // }

  // @override
  // Future<Either<DatabaseFailure, Product>> deleteProduct(
  //     {required Product product}) async {
  //   try {
  //     final productEntry = ProductDTO.fromDomain(product);
  //     final _ = await _read(firebaseFirestoreProductProvider)
  //         .collection('products')
  //         .doc(productEntry.id)
  //         .delete();
  //     final _docRef = _read(firebaseFirestoreProductProvider)
  //         .collection('productsDeleted')
  //         .doc(productEntry.id);
  //     await _docRef.set(productEntry.toDocument());
  //     return right(product);
  //   } on Exception catch (e) {
  //     return left(handleDatabaseFailure(e));
  //   }
  // }

  // @override
  // Future<Either<DatabaseFailure, Product>> undoDeleteProduct(
  //     {required Product product}) async {
  //   try {
  //     final productEntry = ProductDTO.fromDomain(product);
  //     final _ = await _read(firebaseFirestoreProductProvider)
  //         .collection('productsDeleted')
  //         .doc(productEntry.id)
  //         .delete();
  //     final _docRef = _read(firebaseFirestoreProductProvider)
  //         .collection('products')
  //         .doc(productEntry.id);
  //     _docRef.set(productEntry.toDocument());
  //     return right(product);
  //   } on Exception catch (e) {
  //     return left(handleDatabaseFailure(e));
  //   }
  // }

}
