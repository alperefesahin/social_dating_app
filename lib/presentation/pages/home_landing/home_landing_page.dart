import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/profile/profile_state.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class HomeLandingPage extends ConsumerStatefulWidget {
  const HomeLandingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeLandingPageState();
}

class _HomeLandingPageState extends ConsumerState<HomeLandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(profileStateProvider.notifier).getCurrentUser();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<ProfileState>(
      profileStateProvider,
      (p, c) {
        if (c.currentUserProfile.isUserChecked) {
          AutoRouter.of(context).replace(const RouteNavigator());
        } else if (!c.currentUserProfile.isUserChecked) {
          AutoRouter.of(context).replace(const AboutRoute());
        }
      },
    );
    return const Scaffold(
      body: CustomProgressIndicator(progressIndicatorColor: blackColor),
    );
  }
}
