import 'package:flutter/material.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/profile_image.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/save_button.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/switch_button.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/widgets/text_fields.dart';

class ProfileEditPageBody extends StatelessWidget {
  const ProfileEditPageBody({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
