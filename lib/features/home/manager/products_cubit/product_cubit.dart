import 'package:bloc/bloc.dart';
import 'package:markiti_app/features/home/data/model/brands_model.dart';
import 'package:markiti_app/features/home/data/model/category_model.dart';
import 'package:markiti_app/features/home/data/model/products_model.dart';
import 'package:markiti_app/features/home/data/repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductsRepo productsRepo;

  ProductCubit({required this.productsRepo}) : super(ProductsInitial());

  Future<void> getAllProduct() async {
    emit(ProductsLoading());

    final response = await productsRepo.getAllProducts();
    response.fold(
      (errMessage) => emit(ProductsFailure(errMessage: errMessage)),
      (products) => emit(ProductsSuccess(productModelList: products)),
    );
  }

  Future<void> getBrand() async {
    emit(BrandsLoading());
    final response = await productsRepo.getAllBrand();
    response.fold(
      (errMessage) => emit(BrandsFailure(errMessage: errMessage)),
      (brands) => emit(BrandsSuccess(brandModelList: brands)),
    );
  }

  Future<void> getCategory() async {
    emit(CategoryLoading());
    final response = await productsRepo.getCategory();
    response.fold(
      (errMessage) => emit(CategoryFailure(errMessage: errMessage)),
      (category) => emit(CategorySuccess(categoryModel: category)),
    );
  }
}
