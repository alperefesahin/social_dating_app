import 'package:flutter/material.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';

class ProfileNameAndStatus extends StatelessWidget {
  const ProfileNameAndStatus({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: user.userName,
          minFontSize: 25,
          maxFontSize: 27,
          textPadding: const EdgeInsets.only(),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4),
        CustomText(
          text: user.status,
          minFontSize: 17,
          maxFontSize: 19,
          textPadding: const EdgeInsets.only(),
          textStyle: const TextStyle(fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
