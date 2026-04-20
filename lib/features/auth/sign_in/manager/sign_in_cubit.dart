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
