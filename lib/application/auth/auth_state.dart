import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_dating_app/domain/auth/auth_user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required AuthUserModel user,
    required bool isUserSignedIn,
    required bool isInProgress,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.empty() => AuthState(
        user: AuthUserModel.empty(),
        isUserSignedIn: false,
        isInProgress: false,
      );
}
