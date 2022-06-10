// ignore_for_file: no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_sign_in_event.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/pages/sign_in/constants/texts.dart';
import 'package:social_dating_app/providers/auth/phone_sign_in_state_provider.dart';

class PhoneNumberSignInSection extends ConsumerStatefulWidget {
  const PhoneNumberSignInSection({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhoneNumberSignInSectionState();
}

class _PhoneNumberSignInSectionState extends ConsumerState<PhoneNumberSignInSection> {
  final PhoneNumber initialPhone = PhoneNumber(isoCode: "TR");

  _PhoneNumberSignInSectionState();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 30,
      ),
      child: InternationalPhoneNumberInput(
        onInputChanged: (PhoneNumber phoneNumber) {
          ref.read(phoneSignInStateProvider.notifier).mapEventsToState(
                PhoneNumberChanged(phoneNumber: phoneNumber.phoneNumber!),
              );
        },
        onInputValidated: (bool isPhoneNumberInputValidated) {
          ref.read(phoneSignInStateProvider.notifier).mapEventsToState(
                UpdateNextButtonStatus(isPhoneNumberInputValidated: isPhoneNumberInputValidated),
              );
        },
        inputDecoration: const InputDecoration(
          hintText: phoneNumberText,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: customIndigoColor,
            ),
          ),
        ),
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.DIALOG,
        ),
        autoValidateMode: AutovalidateMode.onUserInteraction,
        initialValue: initialPhone,
        formatInput: false,
        autoFocus: false,
        autoFocusSearch: false,
        inputBorder: const OutlineInputBorder(),
      ),
    );
  }
}
