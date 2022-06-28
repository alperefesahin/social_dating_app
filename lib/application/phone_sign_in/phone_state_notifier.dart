import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_state.dart';
import 'package:social_dating_app/domain/auth/auth_failure.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';

class PhoneSignInStateNotifier extends StateNotifier<PhoneSignInState> {
  PhoneSignInStateNotifier(this._read) : super(PhoneSignInState.empty()) {
    _phoneNumberSignInSubscription?.cancel();
  }

  StreamSubscription<Either<AuthFailure, Tuple2<String, int?>>>? _phoneNumberSignInSubscription;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  final Reader _read;

  @override
  void dispose() {
    _phoneNumberSignInSubscription?.cancel();
    super.dispose();
  }

  void mapEventsToState(PhoneSignInEvent event) {
    event.map(
      phoneNumberChanged: (phoneNumberChangedEvent) {
        final phoneNumber = phoneNumberChangedEvent.phoneNumber;
        state = state.copyWith(phoneNumber: phoneNumber);
      },
      updateNextButtonStatus: (updateNextButtonStatusEvent) {
        final isPhoneNumberInputValidated = updateNextButtonStatusEvent.isPhoneNumberInputValidated;
        state = state.copyWith(
          isPhoneNumberInputValidated: isPhoneNumberInputValidated,
        );
      },
      smsCodeChanged: (smsCodeChangedEvent) {
        final smsCode = smsCodeChangedEvent.smsCode;
        state = state.copyWith(
          smsCode: smsCode,
        );
      },
      reset: (resetEvent) {
        state = state.copyWith(
          failureMessageOption: none(),
          verificationIdOption: none(),
          isInProgress: false,
          isPhoneNumberInputValidated: false,
          phoneNumber: "",
          smsCode: "",
        );
      },
      signInWithPhoneNumber: (signInWithPhoneNumberEvent) {
        if (state.isInProgress) {
          return;
        }

        state = state.copyWith(isInProgress: true);

        _phoneNumberSignInSubscription?.cancel();
        _phoneNumberSignInSubscription = _read(authRepositoryProvider)
            .signInWithPhoneNumber(
          phoneNumber: state.phoneNumber,
          timeout: verificationCodeTimeout,
          resendToken: state.phoneNumber != state.phoneNumberAndResendTokenPair.value1
              ? null
              : state.phoneNumberAndResendTokenPair.value2,
        )
            .listen(
          (Either<AuthFailure, Tuple2<String, int?>> failureOrVerificationId) {
            failureOrVerificationId.fold(
              (failure) {
                state = state.copyWith(
                  failureMessageOption: some(failure),
                  isInProgress: false,
                );
              },
              (Tuple2<String, int?> verificationIdResendTokenPair) {
                state = state.copyWith(
                  verificationIdOption: some(verificationIdResendTokenPair.value1),
                  isInProgress: false,
                  phoneNumberAndResendTokenPair: tuple2(
                    state.phoneNumber,
                    verificationIdResendTokenPair.value2,
                  ),
                );
              },
            );
          },
        );
      },
      verifySmsCode: (verifySmsCodeEvent) {
        if (state.isInProgress) {
          return;
        }
        state.verificationIdOption.fold(
          () {
            // verificationId does not exist. This should not be happen.
          },
          (verificationId) async {
            state = state.copyWith(
              failureMessageOption: none(),
              isInProgress: true,
            );
            
            final Either<AuthFailure, Unit> failureOrSuccess = await _read(authRepositoryProvider).verifySmsCode(
              smsCode: state.smsCode,
              verificationId: verificationId,
            );

            failureOrSuccess.fold(
              (failure) {
                state = state.copyWith(
                  failureMessageOption: some(failure),
                  isInProgress: false,
                );
              },
              (_) {
                state = state.copyWith(isInProgress: false);
                // Verification completed successfully.
                // The UI should listen to Auth Listener State to redirect.
              },
            );
          },
        );
      },
    );
  }
}
