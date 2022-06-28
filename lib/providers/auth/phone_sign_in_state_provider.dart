import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_state.dart';
import 'package:social_dating_app/application/phone_sign_in/phone_state_notifier.dart';

final phoneSignInStateProvider = StateNotifierProvider.autoDispose<PhoneSignInStateNotifier, PhoneSignInState>(
  (ref) => PhoneSignInStateNotifier(ref.read),
);
