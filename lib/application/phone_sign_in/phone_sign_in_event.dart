import 'package:freezed_annotation/freezed_annotation.dart';
part 'phone_sign_in_event.freezed.dart';

@freezed
class PhoneSignInEvent with _$PhoneSignInEvent {
  const factory PhoneSignInEvent.reset() = Reset;
  const factory PhoneSignInEvent.phoneNumberChanged({required String phoneNumber}) = PhoneNumberChanged;
  const factory PhoneSignInEvent.smsCodeChanged({required String smsCode}) = SmsCodeChanged;
  const factory PhoneSignInEvent.verifySmsCode() = VerifySmsCode;
  const factory PhoneSignInEvent.signInWithPhoneNumber() = SignInWithPhoneNumber;
  const factory PhoneSignInEvent.updateNextButtonStatus({required bool isPhoneNumberInputValidated}) =
      UpdateNextButtonStatus;
}
