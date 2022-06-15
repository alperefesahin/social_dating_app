import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/profile/constants/texts.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomText(
            text: aboutText,
            minFontSize: 25,
            maxFontSize: 30,
            textPadding: EdgeInsets.only(),
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: customIndigoColor,
            ),
          ),
          const SizedBox(height: 8),
          CustomText(
            text: user.about,
            minFontSize: 17,
            maxFontSize: 19,
            textPadding: const EdgeInsets.symmetric(horizontal: 20),
            textStyle: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
