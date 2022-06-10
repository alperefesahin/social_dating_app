import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/auth/auth_event.dart';
import 'package:social_dating_app/application/auth/auth_state.dart';
import 'package:social_dating_app/domain/auth/auth_user_model.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this._read) : super(AuthState.empty()) {
    _authStateChangesSubscription?.cancel();
    _authStateChangesSubscription = _read(authRepositoryProvider).authStateChanges.listen(
      (User? user) {
        if (user == null) {
          state = state.copyWith(
            user: AuthUserModel.empty(),
            isUserSignedIn: false,
          );
        } else {
          state = state.copyWith(
            user: AuthUserModel(
              id: user.uid,
              phoneNumber: user.phoneNumber!,
            ),
            isUserSignedIn: true,
          );
        }
      },
    );
  }

  final Reader _read;
  StreamSubscription<User?>? _authStateChangesSubscription;

  void mapEventsToState(AuthEvent event) {
    event.map(
      signOut: (signOutEvent) {},
    );
  }

  User? appInit() {
    final user = _read(authRepositoryProvider).getCurrentUser();
    return user;
  }

  Future<void> signOut() async {
    try {
      await _read(authRepositoryProvider).signOut();
      state = state.copyWith(isUserSignedIn: false);
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    _authStateChangesSubscription?.cancel();
    super.dispose();
  }
}
