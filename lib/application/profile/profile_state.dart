import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_dating_app/domain/user_profile/about_model.dart';
import 'package:social_dating_app/domain/user_profile/status_model.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required UserProfileModel currentUserProfile,
    required Status userStatus,
    required About userAbout,
    required FormzStatus formStatus,
    required String textFieldError,
  }) = _ProfileState;
  const ProfileState._();

  factory ProfileState.empty() => ProfileState(
        currentUserProfile: UserProfileModel.empty(),
        userAbout: const About.pure(),
        userStatus: const Status.pure(),
        formStatus: FormzStatus.pure,
        textFieldError: "",
      );

  bool get displaySaveButton => formStatus.isValidated && currentUserProfile.onlineStatus;
}
