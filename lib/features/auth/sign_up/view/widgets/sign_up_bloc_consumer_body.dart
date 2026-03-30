import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/features/auth/sign_up/manager/sign_up_cubit.dart';
import 'package:markiti_app/features/auth/sign_up/view/widgets/sign_up_view_body.dart';

class SignUpBlocConsumerBody extends StatelessWidget {
  const SignUpBlocConsumerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        } else if (state is SignUpSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Sign up successful!')));
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        return state is SignUpLoading
            ? const Center(child: CircularProgressIndicator())
            : const SignUpViewBody();
      },
    );
  }
}
