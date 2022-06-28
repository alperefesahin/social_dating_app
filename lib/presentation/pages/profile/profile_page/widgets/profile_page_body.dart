import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_page/widgets/edit_profile_button.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_page/widgets/profile_about.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_page/widgets/profile_image.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_page/widgets/profile_name_and_status.dart';

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ProfileImage(user: user),
                const SizedBox(height: 24),
                ProfileNameAndStatus(user: user),
              ],
            ),
            ProfileAbout(user: user),
            EditProfileButton(user: user),
          ],
        ),
      ),
    );
  }
}
