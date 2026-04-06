import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/features/auth/sign_in/manager/sign_in_cubit.dart';
import 'package:markiti_app/features/auth/sign_in/view/widgets/sign_in_view_body.dart';
import 'package:markiti_app/features/home/view/home_navigator.dart';

class SignInBlocConsumerBody extends StatelessWidget {
  const SignInBlocConsumerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Sign in successful')));
          Navigator.of(context).pushReplacementNamed(HomeNavigator.routeName);
        } else if (state is SignInFailure) {
          // Show error message
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return state is SignInLoading
            ? Center(child: CircularProgressIndicator())
            : const SignInViewBody();
      },
    );
  }
}
