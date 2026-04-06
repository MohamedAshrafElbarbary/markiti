import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:markiti_app/core/api/api_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/core/function/cache_helper.dart';
import 'package:markiti_app/features/auth/sign_in/data/model/sign_in_model.dart';

class SignInRepo {
  final ApiConsumer api;

  SignInRepo({required this.api});
  Future<Either<String, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.post(
        EndPoint.signIn,
        data: {ApiKey.email: email, ApiKey.password: password},
      );
      final userInfo = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(userInfo.token);
      CacheHelper().saveData(key: ApiKey.token, value: userInfo.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      return right(userInfo);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }
}
