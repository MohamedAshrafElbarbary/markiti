import 'package:bloc/bloc.dart';
import 'package:markiti_app/core/api/api_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/features/home/data/model/brands_model.dart';
import 'package:markiti_app/features/home/data/model/category_model.dart';
import 'package:markiti_app/features/home/data/model/products_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ApiConsumer api;

  late List<CategoryModel> categoryList;
  ProductCubit({required this.api}) : super(ProductsInitial());

  Future<void> getAllProduct() async {
    emit(ProductsLoading());
    try {
      final response = await api.get(EndPoint.getAllProducts);
      //maping
      List<dynamic> list = response['list'];
      List<ProductModel> products = list
          .map((e) => ProductModel.fromJson(e))
          .toList();
      emit(ProductsSuccess(productModel: products));
    } on ServerException catch (e) {
      emit(ProductsFailure(errMessage: e.errModel.errorMessage));
    }
  }

  Future<void> getBrand() async {
    try {
      emit(BrandsLoading());
      final response = await api.get(EndPoint.getBrands);
      List<dynamic> list = response['list'];
      List<BrandModel> brandsList = list
          .map((e) => BrandModel.fromJson(e))
          .toList();
      emit(BrandsSuccess(brandModel: brandsList));
    } on ServerException catch (e) {
      emit(BrandsFailure(errMessage: e.errModel.errorMessage));
    }
  }

  Future<void> getCategory() async {
    try {
      emit(CategoryLoading());
      final response = await api.get(EndPoint.getCategory);
      List<dynamic> list = response['list'];
      List<CategoryModel> categories = list
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      categoryList = categories;
      emit(CategorySuccess(categoryModel: categories));
    } on ServerException catch (e) {
      emit(CategoryFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
