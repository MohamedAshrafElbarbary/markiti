import 'package:bloc/bloc.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/features/auth/forget_password/model/rest_model.dart';
import 'package:meta/meta.dart';

part 'rest_password_state.dart';

class RestPasswordCubit extends Cubit<RestPasswordState> {
  final DioConsumer api;
  RestPasswordModel? restPasswordModel;
  RestPasswordCubit({required this.api}) : super(RestPasswordInitial());

  restPassword({required String email}) async {
    emit(RestPasswordLoading());
    try {
      await api.post(EndPoint.restPassword, data: {ApiKey.email: email});

      emit(RestPasswordSuccess());
    } on ServerException catch (e) {
      emit(RestPasswordError(message: e.errModel.errorMessage));
    }
  }

  codePassword() {}
}
