import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class VerificationPinField extends ConsumerWidget {
  const VerificationPinField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 88.w,
            height: 10.h,
            decoration: BoxDecoration(
              border: Border.all(color: whiteColor, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          PinCodeTextField(
            backgroundColor: transparentColor,
            mainAxisAlignment: MainAxisAlignment.center,
            appContext: context,
            length: 6,
            onChanged: (String smsCode) {
              ref.read(phoneSignInStateProvider.notifier).mapEventsToState(
                    SmsCodeChanged(smsCode: smsCode),
                  );
            },
            textStyle: const TextStyle(color: whiteColor),
            keyboardType: TextInputType.phone,
            hintCharacter: "-",
            hintStyle: const TextStyle(color: whiteColor),
            pinTheme: PinTheme(
              fieldOuterPadding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 8,
              ),
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 7.h,
              fieldWidth: 10.w,
              inactiveColor: customIndigoBackgroundColor,
              activeColor: customIndigoBackgroundColor,
              selectedColor: customIndigoBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
