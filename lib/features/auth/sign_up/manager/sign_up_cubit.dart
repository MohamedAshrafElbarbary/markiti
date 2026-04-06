import 'package:bloc/bloc.dart';
import 'package:markiti_app/features/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;
  // SignUpModel? signUpModel;
  SignUpCubit({required this.signUpRepo}) : super(SignUpInitial());

  Future<void> sinUp({
    required String yourName,
    required String userName,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(SignUpLoading());
    final response = await signUpRepo.sinUp(
      yourName: yourName,
      userName: userName,
      phone: phone,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
    response.fold(
      (errMessage) => emit(SignUpFailure(errorMessage: errMessage)),
      (signUpModel) => emit(SignUpSuccess(message: signUpModel.message)),
    );
  }
}








  // Future<void> sinUp({
  //   required String yourName,
  //   required String userName,
  //   required String phone,
  //   required String email,
  //   required String password,
  //   required String confirmPassword,
  // }) async {
  //   try {
  //     emit(SignUpLoading());
  //     final response = await api.post(
  //       EndPoint.signUp,
  //       data: {
  //         ApiKey.yourName: yourName,
  //         ApiKey.userName: userName,
  //         ApiKey.phone: phone,
  //         ApiKey.email: email,
  //         ApiKey.password: password,
  //         ApiKey.confirmPassword: confirmPassword,
  //       },
  //     );
  //     signUpModel = SignUpModel.fromJson(response);
  //     emit(SignUpSuccess(message: signUpModel!.message));
  //   } on ServerException catch (e) {
  //     emit(SignUpFailure(errorMessage: e.errModel.errorMessage));
  //   }
  // }