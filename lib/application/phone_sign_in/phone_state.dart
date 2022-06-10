import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_dating_app/domain/auth/auth_failure.dart';

part 'phone_state.freezed.dart';

@freezed
class PhoneSignInState with _$PhoneSignInState {
  factory PhoneSignInState({
    required bool isPhoneNumberInputValidated,
    required bool isInProgress,
    required String phoneNumber,
    required String smsCode,
    required Option<String> verificationIdOption,
    required Option<AuthFailure> failureMessageOption,
  }) = _PhoneSignInState;

  const PhoneSignInState._();

  factory PhoneSignInState.empty() => PhoneSignInState(
        isPhoneNumberInputValidated: false,
        isInProgress: false,
        phoneNumber: "",
        smsCode: "",
        verificationIdOption: none(),
        failureMessageOption: none(),
      );
}
