import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/profile_image.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/save_button.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/switch_button.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/text_fields.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class ProfileEditPageBody extends ConsumerWidget {
  const ProfileEditPageBody({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInProgress = ref.watch(profileStateProvider.select((state) => state.isInProgress));
    ref.listen<bool>(
      profileStateProvider.select((state) => state.isSavingProcessCompletedSuccesfully),
      (previousState, currentState) {
        if (currentState == true) {
          AutoRouter.of(context).replace(const RouteNavigator());
        }
      },
    );

    return isInProgress
        ? const CustomProgressIndicator(progressIndicatorColor: blackColor)
        : SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileImage(user: user),
                TextFields(user: user),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SaveButton(user: user),
                    const SwitchButton(),
                  ],
                )
              ],
            ),
          );
  }
}
