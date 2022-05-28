import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:social_dating_app/presentation/pages/home/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
            appBar: CustomAppBar(
              appBarTitle: homePageTitle,
              appBarAction: Icons.exit_to_app,
              actionsOnPressed: () {
                context.read<AuthCubit>().signOut();
              },
              appBarBackgroundColor: customIndigoColor,
              appBarIconColor: whiteColor,
            ),
            body: const HomePageBody());
      },
    );
  }
}
