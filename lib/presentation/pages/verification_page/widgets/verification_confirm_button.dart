import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/verification_page/constants/texts.dart';
import 'package:social_dating_app/providers/auth/auth_state_provider.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class VerificationConfirmButton extends ConsumerWidget {
  const VerificationConfirmButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final smsCode = ref.watch(phoneSignInStateProvider).smsCode;
    
    return InkWell(
      onTap: () {
        if (smsCode.isNotEmpty) {
          ref.read(phoneSignInStateProvider.notifier).mapEventsToState(const VerifySmsCode());
        }
      },
      splashColor: transparentColor,
      highlightColor: transparentColor,
      child: Container(
        margin: const EdgeInsets.only(top: 75),
        width: MediaQuery.of(context).size.width / 1.15,
        height: MediaQuery.of(context).size.height / 13,
        decoration: const BoxDecoration(
          color: customIndigoBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              text: confirmText,
              minFontSize: 25,
              maxFontSize: 30,
              textPadding: EdgeInsets.only(left: 20),
              textStyle: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: 75,
              height: MediaQuery.of(context).size.height / 13,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
