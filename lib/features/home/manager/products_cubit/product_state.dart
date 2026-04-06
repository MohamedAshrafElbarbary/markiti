part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductsInitial extends ProductState {}

// product state
final class ProductsLoading extends ProductState {}

final class ProductsSucsess extends ProductState {
  final List<ProductModel> productModel;

  ProductsSucsess({required this.productModel});
}

final class ProductsFailure extends ProductState {
  final String errMessage;

  ProductsFailure({required this.errMessage});
}

// Brands state

final class BrandsLoading extends ProductState {}

final class BrandsSucsess extends ProductState {
  final List<BrandModel> brandModel;

  BrandsSucsess({required this.brandModel});
}

final class BrandsFailure extends ProductState {
  final String errMessage;

  BrandsFailure({required this.errMessage});
}

// category state
final class CategoryLoading extends ProductState {}

final class CategorySucsess extends ProductState {
  final List<CategoryModel> categoryModel;

  CategorySucsess({required this.categoryModel});
}

final class CategoryFailure extends ProductState {
  final String errMessage;

  CategoryFailure({required this.errMessage});
}
