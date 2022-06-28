import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/auth/auth_state.dart';
import 'package:social_dating_app/application/auth/auth_state_notifier.dart';

final authStateProvider = StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref.read),
);
