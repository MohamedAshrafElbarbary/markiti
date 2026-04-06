part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

// final class ProfileImageLoading extends ProfileState {}

// final class ProfileImageSuccess extends ProfileState {}

// final class ProfileImageFailure extends ProfileState {
//   final String errorMessage;
//   ProfileImageFailure(this.errorMessage);
// }

final class ProfileUserInfoLoading extends ProfileState {}

final class ProfileUserInfoSuccess extends ProfileState {
  final UserInfoModel userInfo;
  ProfileUserInfoSuccess(this.userInfo);
}

final class ProfileUserInfoFailure extends ProfileState {
  final String errorMessage;
  ProfileUserInfoFailure(this.errorMessage);
}
