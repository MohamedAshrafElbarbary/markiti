import 'package:dartz/dartz.dart';
import 'package:markiti_app/core/api/api_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/features/auth/sign_up/data/model/sign_up_model.dart';

class SignUpRepo {
  final ApiConsumer api;

  SignUpRepo({required this.api});
  Future<Either<String, SignUpModel>> sinUp({
    required String yourName,
    required String userName,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await api.post(
        EndPoint.signUp,
        data: {
          ApiKey.yourName: yourName,
          ApiKey.userName: userName,
          ApiKey.phone: phone,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      final signUpModel = SignUpModel.fromJson(response);
      return right(signUpModel);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }
}
