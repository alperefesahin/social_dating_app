import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_state.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/sign_in/constants/texts.dart';
import 'package:social_dating_app/presentation/pages/sign_in/widgets/sign_in_body.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInProgress = ref.watch(phoneSignInStateProvider.select((state) => state.isInProgress));

    ref.listen<PhoneSignInState>(
      phoneSignInStateProvider.select((state) => state),
      (p, c) {
        if (p?.failureMessageOption != c.failureMessageOption) {
          c.failureMessageOption.fold(
            () {},
            (failure) {
              BotToast.showText(
                text: failure.when(
                  serverError: () => "Server Error",
                  tooManyRequests: () => "Too Many Requests",
                  deviceNotSupported: () => "Device Not Supported",
                  smsTimeout: () => "Sms Timeout",
                  sessionExpired: () => "Session Expired",
                  invalidVerificationCode: () => "Invalid Verification Code",
                ),
              );
              ref.read(phoneSignInStateProvider.notifier).mapEventsToState(const Reset());
              AutoRouter.of(context).popUntilRoot();
            },
          );
        }
      },
    );

    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: isInProgress
          ? const Scaffold(
              body: CustomProgressIndicator(
                progressIndicatorColor: blackColor,
              ),
            )
          : Scaffold(
              appBar: CustomAppBar(
                appBarIconColor: whiteColor,
                appBarBackgroundColor: customIndigoColor,
                appBarTitle: signInText,
                appBarAction: CupertinoIcons.line_horizontal_3_decrease,
              ),
              body: const SignInPageBody(),
            ),
    );
  }
}
