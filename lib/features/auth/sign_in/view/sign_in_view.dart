import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';
import 'package:markiti_app/core/services/servise_locator.dart';
import 'package:markiti_app/features/auth/sign_in/manager/sign_in_cubit.dart';
import 'package:markiti_app/features/auth/sign_in/view/widgets/sign_in_bloc_consumer_body.dart';

class SignInView extends StatelessWidget {
  static const String routeName = 'SignIn';
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(
        api: getIt.get<DioConsumer>(),
        //  DioConsumer(dio: Dio())
      ),
      child: Scaffold(body: SignInBlocConsumerBody()),
    );
  }
}
