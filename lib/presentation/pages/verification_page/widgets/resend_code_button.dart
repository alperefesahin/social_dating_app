import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/verification_page/constants/texts.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class ResendCodeButton extends ConsumerWidget {
  const ResendCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: InkWell(
        onTap: () {},
        splashColor: transparentColor,
        highlightColor: transparentColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              ref.read(phoneSignInStateProvider.notifier).mapEventsToState(const SignInWithPhoneNumber());
            },
            child: Row(
              children: const [
                CustomText(
                  text: resendCodeText,
                  minFontSize: 15,
                  maxFontSize: 20,
                  textStyle: TextStyle(
                    color: confirmationTextColor,
                  ),
                  textPadding: EdgeInsets.only(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: whiteColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
