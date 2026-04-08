part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductsInitial extends ProductState {}

// product state
final class ProductsLoading extends ProductState {}

final class ProductsSuccess extends ProductState {
  final List<ProductModel> productModel;

  ProductsSuccess({required this.productModel});
}

final class ProductsFailure extends ProductState {
  final String errMessage;

  ProductsFailure({required this.errMessage});
}

// Brands state

final class BrandsLoading extends ProductState {}

final class BrandsSuccess extends ProductState {
  final List<BrandModel> brandModel;

  BrandsSuccess({required this.brandModel});
}

final class BrandsFailure extends ProductState {
  final String errMessage;

  BrandsFailure({required this.errMessage});
}

// category state
final class CategoryLoading extends ProductState {}

final class CategorySuccess extends ProductState {
  final List<CategoryModel> categoryModel;

  CategorySuccess({required this.categoryModel});
}

final class CategoryFailure extends ProductState {
  final String errMessage;

  CategoryFailure({required this.errMessage});
}
