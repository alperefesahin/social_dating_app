import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/constants/texts.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 6.h,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: greyColor.withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: InkWell(
        hoverColor: transparentColor,
        highlightColor: transparentColor,
        splashColor: transparentColor,
        focusColor: transparentColor,
        onTap: () {
          AutoRouter.of(context).navigate(ProfileEditRoute(user: user));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              CupertinoIcons.check_mark_circled,
              size: 30,
              color: customIndigoColor,
            ),
            SizedBox(width: 10),
            CustomText(
              text: saveText,
              minFontSize: 21,
              maxFontSize: 25,
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: customIndigoColor,
              ),
              textPadding: EdgeInsets.only(),
            ),
          ],
        ),
      ),
    );
  }
}
