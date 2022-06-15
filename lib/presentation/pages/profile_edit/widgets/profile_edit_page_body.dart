import 'package:flutter/material.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/pages/profile_edit/widgets/profile_image.dart';

class ProfileEditPageBody extends StatelessWidget {
  const ProfileEditPageBody({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImage(user: user),
      ],
    );
  }
}
