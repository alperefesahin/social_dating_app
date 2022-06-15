import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/constants/texts.dart';
import 'package:social_dating_app/providers/profile/profile_provider.dart';

class SaveButton extends ConsumerWidget {
  const SaveButton({Key? key, required this.user}) : super(key: key);
  final UserProfileModel user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saveButtonStatus = ref.watch(
      profileStateProvider.select(
        (state) => state.displaySaveButton,
      ),
    );
    print(saveButtonStatus);

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
          if (saveButtonStatus) {
            ref.read(profileStateProvider.notifier).updateProfileInformations();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.check_mark_circled,
              size: 30,
              color: saveButtonStatus ? customIndigoColor : customIndigoColor.withOpacity(0.5),
            ),
            const SizedBox(width: 10),
            CustomText(
              text: saveText,
              minFontSize: 21,
              maxFontSize: 25,
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: saveButtonStatus ? customIndigoColor : customIndigoColor.withOpacity(0.5),
              ),
              textPadding: const EdgeInsets.only(),
            ),
          ],
        ),
      ),
    );
  }
}
