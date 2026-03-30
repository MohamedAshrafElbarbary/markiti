import 'package:bloc/bloc.dart';
import 'package:markiti_app/core/api/api_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/features/auth/sign_up/model/sign_up_model.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final ApiConsumer api;
  SignUpModel? signUpModel;
  SignUpCubit({required this.api}) : super(SignUpInitial());

  Future<void> sinUp({
    required String yourName,
    required String userName,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      emit(SignUpLoading());
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
      signUpModel = SignUpModel.fromJson(response);
      emit(SignUpSuccess(message: signUpModel!.message));
    } on ServerException catch (e) {
      emit(SignUpFailure(errorMessage: e.errModel.errorMessage));
    }
  }
}
