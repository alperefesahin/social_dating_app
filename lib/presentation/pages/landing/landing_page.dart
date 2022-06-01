import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final bool isUserLoggedIn = context.read<AuthCubit>().state.isUserLoggedIn;
        if (isUserLoggedIn) {
          AutoRouter.of(context).replace(const HomeRouteNavigator());
        } else if (!isUserLoggedIn) {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isUserLoggedIn != c.isUserLoggedIn && c.isUserLoggedIn,
      listener: (context, state) {
        final bool isUserLoggedIn = state.isUserLoggedIn;

        if (isUserLoggedIn) {
          AutoRouter.of(context).replace(const HomeRouteNavigator());
        } else {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
      child: const Scaffold(body: CustomProgressIndicator(progressIndicatorColor: blackColor)),
    );
  }
}
