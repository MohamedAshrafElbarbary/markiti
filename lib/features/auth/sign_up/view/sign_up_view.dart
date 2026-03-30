import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';
import 'package:markiti_app/core/services/servise_locator.dart';
import 'package:markiti_app/features/auth/sign_up/manager/sign_up_cubit.dart';
import 'package:markiti_app/features/auth/sign_up/view/widgets/sign_up_bloc_consumer_body.dart';

class SignUpView extends StatelessWidget {
  static const String routeName = 'sign_up';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        api: getIt.get<DioConsumer>(),
        //DioConsumer(dio: Dio())
      ),
      child: Scaffold(body: SignUpBlocConsumerBody()),
    );
  }
}
