import 'package:dartz/dartz.dart';
import 'package:markiti_app/core/api/api_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/features/home/data/model/brands_model.dart';
import 'package:markiti_app/features/home/data/model/category_model.dart';
import 'package:markiti_app/features/home/data/model/products_model.dart';

class ProductsRepo {
  final ApiConsumer api;
  static late List<ProductModel> products;
  static late List<BrandModel> brands;
  static late List<CategoryModel> categorys;
  ProductsRepo({required this.api});

  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    try {
      final response = await api.get(EndPoint.getAllProducts);
      List<dynamic> list = response['list'];
      List<ProductModel> productsList = list
          .map((e) => ProductModel.fromJson(e))
          .toList();
      products = productsList;
      return right(productsList);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, List<BrandModel>>> getAllBrand() async {
    try {
      final response = await api.get(EndPoint.getBrands);
      List<dynamic> list = response['list'];
      List<BrandModel> brandsList = list
          .map((e) => BrandModel.fromJson(e))
          .toList();
      brands = brandsList;
      return right(brandsList);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }

  Future<Either<String, List<CategoryModel>>> getCategory() async {
    try {
      final response = await api.get(EndPoint.getCategory);
      List<dynamic> list = response['list'];
      List<CategoryModel> categoriesList = list
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      categorys = categoriesList;
      return right(categoriesList);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }
}
