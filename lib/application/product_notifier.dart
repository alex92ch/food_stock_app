import 'package:food_stock_app/domain/shared/database_failure.dart';
import 'package:food_stock_app/domain/shared/product.dart';
import 'package:food_stock_app/infrastructure/shared/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'product_notifier.freezed.dart';

final productsNotifierProvider =
    StateNotifierProvider<ProductNotifier, ProductState>(
        (ref) => ProductNotifier(ref.read));

@freezed
class ProductState with _$ProductState {
  const ProductState._();
  const factory ProductState.initial(
    List<Product> productList,
  ) = _Initial;
  const factory ProductState.loadSuccess(
    List<Product> productList,
  ) = _LoadSuccess;
  const factory ProductState.failure(
    List<Product> productList,
    DatabaseFailure failure,
  ) = _Failure;
  const factory ProductState.inProgress(
    List<Product> productList,
  ) = _InProgress;
  // const factory ProductState.deleteSuccess(
  //   List<Product> dutyList,
  //   Product duty,
  // ) = _DeleteSuccess;
  const factory ProductState.createSuccess(
    List<Product> productList,
    Product product,
  ) = _CreateSuccess;
  // const factory ProductState.updateSuccess(
  //   List<Product> dutyList,
  //   Product duty,
  // ) = _UpdateSuccess;
}

class ProductNotifier extends StateNotifier<ProductState> {
  final Reader _read;

  ProductNotifier(this._read) : super(const ProductState.initial([]));

  Future<void> getProducts({bool isloading = false}) async {
    if (isloading) state = const ProductState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).getProductList();
    state = failureOrSuccess.fold(
      (l) => state = ProductState.failure([], l),
      (r) => state = ProductState.loadSuccess(r),
    );
  }

  Future<void> createProduct(
      {required Product product, bool isloading = false}) async {
    if (isloading) state = const ProductState.inProgress([]);
    final failureOrSuccess =
        await _read(productRepositoryProvider).createProduct(product: product);
    state = failureOrSuccess.fold(
      (l) => state = ProductState.failure([], l),
      (r) => state = ProductState.createSuccess(r, product),
    );
  }

  // Future<void> updateProduct(
  //     {required Product duty, bool isloading = false}) async {
  //   if (isloading) state = const ProductState.inProgress([]);
  //   final failureOrSuccess =
  //       await _read(productRepositoryProvider).updateProduct(duty: duty);
  //   state = failureOrSuccess.fold(
  //     (l) => state = ProductState.failure([], l),
  //     (r) => state = ProductState.updateSuccess(r, duty),
  //   );
  // }

  // Future<void> deleteProduct(
  //     {required Product duty, bool isloading = false}) async {
  //   if (isloading) state = const ProductState.inProgress([]);
  //   final failureOrSuccess =
  //       await _read(productRepositoryProvider).deleteProduct(duty: duty);
  //   state = failureOrSuccess.fold(
  //     (l) => state = ProductState.failure([], l),
  //     (r) => state = ProductState.deleteSuccess(r, duty),
  //   );
  // }
}
