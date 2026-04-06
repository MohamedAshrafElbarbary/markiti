import 'package:bloc/bloc.dart';
import 'package:markiti_app/features/auth/sign_in/data/repo/sign_in_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignInRepo signInRepo;
  // SignInModel? userInfo;
  SignInCubit({required this.signInRepo}) : super(SignInInitial());
  Future<void> signIn({required String email, required String password}) async {
    emit(SignInLoading());
    final response = await signInRepo.signIn(email: email, password: password);
    response.fold(
      (errMessage) => emit(SignInFailure(errMessage)),
      (signInModel) => emit(SignInSuccess()),
    );
  }
}

// Future<void> signIn({required String email, required String password}) async {
//   try {
//     emit(SignInLoading());
//     final response = await api.post(
//       EndPoint.signIn,
//       data: {ApiKey.email: email, ApiKey.password: password},
//     );
//     userInfo = SignInModel.fromJson(response);
//     final decodedToken = JwtDecoder.decode(userInfo!.token);
//     CacheHelper().saveData(key: ApiKey.token, value: userInfo!.token);
//     CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
//     emit(SignInSuccess());
//   } on ServerException catch (e) {
//     emit(SignInFailure(e.errModel.errorMessage));
//   }
// }
