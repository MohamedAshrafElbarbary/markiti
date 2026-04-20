import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';
import 'package:markiti_app/core/services/servise_locator.dart';
import 'package:markiti_app/features/profile/manager/profile_cubit.dart';
import 'package:markiti_app/features/profile/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  static const String routeName = 'profile';
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        api: getIt.get<DioConsumer>(),
        // DioConsumer(dio: Dio())
      ),
      child: Scaffold(body: ProfileBlocBuilderBody()),
    );
  }
}

class ProfileBlocBuilderBody extends StatefulWidget {
  const ProfileBlocBuilderBody({super.key});

  @override
  State<ProfileBlocBuilderBody> createState() => _ProfileBlocBuilderBodyState();
}

class _ProfileBlocBuilderBodyState extends State<ProfileBlocBuilderBody> {
  @override
  void initState() {
    context.read<ProfileCubit>().getUserData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is ProfileUserInfoSuccess) {
          return ProfileViewBody(userInfoModel: state.userInfo);
        } else if (state is ProfileUserInfoLoading) {
          return CircularProgressIndicator();
        } else {
          return Center(child: Text('error'));
        }
      },
    );
  }
}
