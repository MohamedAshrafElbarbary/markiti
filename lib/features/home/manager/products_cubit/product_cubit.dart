import 'package:bloc/bloc.dart';
import 'package:markiti_app/core/api/api_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/features/home/model/brands_model.dart';
import 'package:markiti_app/features/home/model/category_model.dart';
import 'package:markiti_app/features/home/model/products_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ApiConsumer api;
  ProductCubit({required this.api}) : super(ProductsInitial());

  getAllProuduct() async {
    emit(ProductsLoading());
    try {
      final response = await api.get(EndPoint.getAllProducts);
      //maping
      List<dynamic> list = response['list'];
      List<ProductModel> productList = list
          .map((e) => ProductModel.fromJson(e))
          .toList();

      emit(ProductsSucsess(productModel: productList));
    } on ServerException catch (e) {
      emit(ProductsFailure(errMessage: e.errModel.errorMessage));
    }
  }

  getBrand() async {
    try {
      emit(BrandsLoading());
      final response = await api.get(EndPoint.getBrands);
      List<dynamic> list = response['list'];
      List<BrandModel> brandsList = list
          .map((e) => BrandModel.fromJson(e))
          .toList();
      emit(BrandsSucsess(brandModel: brandsList));
    } on ServerException catch (e) {
      emit(BrandsFailure(errMessage: e.errModel.errorMessage));
    }
  }

  getcategory() async {
    try {
      emit(CategoryLoading());
      final response = await api.get(EndPoint.getCategory);
      List<dynamic> list = response['list'];
      List<CategoryModel> categoryList = list
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      emit(CategorySucsess(categoryModel: categoryList));
    } on ServerException catch (e) {
      emit(CategoryFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
