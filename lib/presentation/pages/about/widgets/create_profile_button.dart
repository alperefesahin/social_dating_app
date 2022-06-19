import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/about/constants/texts.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class CreateProfileButton extends ConsumerWidget {
  const CreateProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createProfileButtonStatus = ref.watch(
      profileStateProvider.select(
        (state) => state.displaySaveButton,
      ),
    );

    return Container(
      width: 50.w,
      height: 6.h,
      margin: EdgeInsets.only(left: 20, right: 20, top: 3.h),
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
          /*  if (createProfileButtonStatus) {
            ref.read(profileStateProvider.notifier).updateProfileInformations();
          } */
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.plus_app,
              size: 30,
              color: createProfileButtonStatus ? customIndigoColor : customIndigoColor.withOpacity(0.7),
            ),
            const SizedBox(width: 10),
            CustomText(
              text: createProfileText,
              minFontSize: 21,
              maxFontSize: 25,
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: createProfileButtonStatus ? customIndigoColor : customIndigoColor.withOpacity(0.7),
              ),
              textPadding: const EdgeInsets.only(),
            ),
          ],
        ),
      ),
    );
  }
}
