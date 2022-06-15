import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/verification_page/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/verification_page/widgets/resend_code_button.dart';
import 'package:social_dating_app/presentation/pages/verification_page/widgets/verification_confirm_button.dart';
import 'package:social_dating_app/presentation/pages/verification_page/widgets/verification_pin_field.dart';
import 'package:social_dating_app/presentation/pages/verification_page/widgets/wave_animation.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class VerificationPageBody extends ConsumerWidget {
  const VerificationPageBody({Key? key, required this.phoneNumber}) : super(key: key);

  final String phoneNumber;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInProgress = ref.watch(phoneSignInStateProvider).isInProgress;

    return Stack(
      children: [
        const CustomWaveAnimation(),
        isInProgress
            ? const CustomProgressIndicator(
                progressIndicatorColor: whiteColor,
              )
            : Padding(
                padding: const EdgeInsets.only(top: 140),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                right: 20,
                                top: 5,
                              ),
                              child: Icon(
                                Icons.check_rounded,
                                size: 25,
                                color: whiteColor,
                              ),
                            ),
                            CustomText(
                              text: confirmationText,
                              minFontSize: 30,
                              maxFontSize: 35,
                              textPadding: EdgeInsets.only(),
                              textStyle: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                          top: 25,
                          right: 25,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.vibration,
                              size: 50,
                              color: whiteColor,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: confirmationInfoText,
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: whiteColor,
                                          fontWeight: FontWeight.w500,
                                          height: 1.75,
                                        ),
                                      ),
                                      TextSpan(
                                        text: phoneNumber,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: whiteColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const VerificationPinField(),
                      const ResendCodeButton(),
                      const VerificationConfirmButton()
                    ],
                  ),
                ),
              )
      ],
    );
  }
}
