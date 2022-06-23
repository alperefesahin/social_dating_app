import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_page/widgets/profile_page_body.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileStateProvider);
    final user = state.currentUserProfile;
    final isUserOnline = state.currentUserProfile.onlineStatus;
    final showLoadingIndicator = state.showLoadingIndicator;

    return showLoadingIndicator
        ? const CustomProgressIndicator(progressIndicatorColor: blackColor)
        : Scaffold(
            appBar: AppBar(
              backgroundColor: transparentColor,
              shadowColor: transparentColor,
              foregroundColor: transparentColor,
              surfaceTintColor: transparentColor,
              toolbarHeight: 50,
              leadingWidth: 20.w,
              leading: Icon(
                CupertinoIcons.circle_filled,
                color: isUserOnline ? greenColor : offlineStatusRedColor,
                size: 15,
              ),
              actions: [
                IconButton(
                  hoverColor: transparentColor,
                  highlightColor: transparentColor,
                  color: transparentColor,
                  splashColor: transparentColor,
                  focusColor: transparentColor,
                  disabledColor: transparentColor,
                  padding: const EdgeInsets.only(right: 45),
                  onPressed: () {
                    ref.read(authRepositoryProvider).signOut();
                  },
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: customIndigoColor,
                    size: 40,
                  ),
                ),
              ],
            ),
            body: ProfilePageBody(user: user),
          );
  }
}
