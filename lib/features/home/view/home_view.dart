import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';
import 'package:markiti_app/core/services/servise_locator.dart';
import 'package:markiti_app/features/home/manager/products_cubit/product_cubit.dart';
import 'package:markiti_app/features/home/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'Home_View';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(api: getIt.get<DioConsumer>()),
      child: Scaffold(body: HomeViewBody()),
    );
  }
}
