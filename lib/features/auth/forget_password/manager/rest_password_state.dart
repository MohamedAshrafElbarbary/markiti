part of 'rest_password_cubit.dart';

@immutable
sealed class RestPasswordState {}

final class RestPasswordInitial extends RestPasswordState {}

final class RestPasswordLoading extends RestPasswordState {}

final class RestPasswordSuccess extends RestPasswordState {}

final class RestPasswordError extends RestPasswordState {
  final String message;
  RestPasswordError({required this.message});
}
