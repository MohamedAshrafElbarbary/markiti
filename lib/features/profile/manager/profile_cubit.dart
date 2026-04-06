import 'package:bloc/bloc.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/errors/exceptions.dart';
import 'package:markiti_app/core/function/cache_helper.dart';
import 'package:markiti_app/features/profile/model/user_info_model.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final DioConsumer api;
  UserInfoModel? userInfoModel;
  ProfileCubit({required this.api}) : super(ProfileInitial());

  Future<void> getUserData() async {
    emit(ProfileUserInfoLoading());
    try {
      final response = await api.get(
        EndPoint.getUserDataEndPoint(CacheHelper().getData(key: ApiKey.id)),
      );
      userInfoModel = UserInfoModel.fromJson(response);
      emit(ProfileUserInfoSuccess(userInfoModel!));
    } on ServerException catch (e) {
      emit(ProfileUserInfoFailure(e.errModel.errorMessage));
    }
  }

  // مشكله التطبيق بيخرج

  // XFile? profilePicture;

  // Future<void> updateProfilePicture(XFile? newPicture) async {
  //   profilePicture = newPicture;
  //   if (profilePicture == null) return;
  //   emit(ProfileLoading());
  //   try {
  //     final response = await api.post(
  //       EndPoint.addImage,
  //       data: {

  //         ApiKey.picture: await uploadImageToAPI(profilePicture!)},
  //     );
  //     emit(ProfileSuccess());
  //   } catch (e) {
  //     emit(ProfileFailure(e.toString()));
  //   }
  // }
}
