part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel userModel,
    required bool isUserLoggedIn,
  }) = _AuthState;

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isUserLoggedIn: false,
      );
}
