import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_text.dart';
import 'package:social_dating_app/presentation/pages/sign_in/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/sign_in/widgets/phone_number_sign_in_section.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class BottomSectionOfThePage extends ConsumerWidget {
  const BottomSectionOfThePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPhoneNumberInputValidated =
        ref.watch(phoneSignInStateProvider.select((state) => state.isPhoneNumberInputValidated));
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        padding: EdgeInsets.only(
          top: 32.h,
          right: 25,
          left: 25,
          bottom: 25,
        ),
        height: 83.h,
        width: 100.h,
        child: Card(
          color: whiteColor,
          elevation: 4.0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Row(
                  children: const [
                    CustomText(
                      text: personalInformationText,
                      minFontSize: 20,
                      maxFontSize: 25,
                      textPadding: EdgeInsets.only(),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const PhoneNumberSignInSection(),
              CustomText(
                text: smsInformationMessage,
                minFontSize: 15,
                maxFontSize: 20,
                textPadding: EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: 3.h,
                ),
              ),
              InkWell(
                splashColor: transparentColor,
                highlightColor: transparentColor,
                onTap: () {
                  if (isPhoneNumberInputValidated) {
                    ref.read(phoneSignInStateProvider.notifier).mapEventsToState(const SignInWithPhoneNumber());
                    AutoRouter.of(context).navigate(
                      const SignInVerificationRoute(),
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: 7.h),
                  width: 22.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: customIndigoColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(60),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: customIndigoColor.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 30,
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: whiteColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
