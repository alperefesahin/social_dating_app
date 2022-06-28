import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/about/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/about/widgets/create_profile_button.dart';
import 'package:social_dating_app/presentation/pages/about/widgets/profile_image.dart';
import 'package:social_dating_app/presentation/pages/about/widgets/profile_informations.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<bool>(
      profileStateProvider.select((state) => state.isCreatingProfileProcessCompletedSuccesfully),
      (p, c) {
        if (c) {
          AutoRouter.of(context).replace(const RouteNavigator());
        } else if (!c) {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
    );

    ref.listen<bool>(
      profileStateProvider.select((state) => state.currentUserProfile.isUserChecked),
      (p, c) {
        if (c) {
          AutoRouter.of(context).replace(const RouteNavigator());
        } else if (!c) {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
    );

    final isInProgress = ref.watch(profileStateProvider).isInProgress;

    return isInProgress
        ? WillPopScope(
            onWillPop: () => Future<bool>.value(false),
            child: const Scaffold(
              body: CustomProgressIndicator(
                progressIndicatorColor: blackColor,
              ),
            ),
          )
        : WillPopScope(
            onWillPop: () => Future<bool>.value(false),
            child: Scaffold(
              body: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10.h,
                  bottom: 5.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: CustomText(
                        text: tellAboutYourselfText,
                        minFontSize: 35,
                        maxFontSize: 40,
                        textPadding: EdgeInsets.only(),
                        textStyle: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Column(
                      children: const [
                        ProfileImage(),
                        ProfileInformations(),
                      ],
                    ),
                    const CreateProfileButton(),
                  ],
                ),
              ),
            ),
          );
  }
}
