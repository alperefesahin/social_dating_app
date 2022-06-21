import 'dart:io';

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_dating_app/domain/user_profile/about_model.dart';
import 'package:social_dating_app/domain/user_profile/status_model.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/domain/user_profile/username_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required UserProfileModel currentUserProfile,
    required Status userStatus,
    required About userAbout,
    required Username userName,
    required File userFileImg,
    required FormzStatus formStatus,
    required String textFieldError,
    required bool isInProgress,
    required bool isSavingProcessCompletedSuccesfully,
    required bool isCreatingProfileProcessCompletedSuccesfully,
  }) = _ProfileState;
  const ProfileState._();

  factory ProfileState.empty() => ProfileState(
        currentUserProfile: UserProfileModel.empty(),
        userAbout: const About.pure(),
        userStatus: const Status.pure(),
        userName: const Username.pure(),
        formStatus: FormzStatus.pure,
        textFieldError: "",
        userFileImg: File(""),
        isInProgress: false,
        isSavingProcessCompletedSuccesfully: false,
        isCreatingProfileProcessCompletedSuccesfully: false,
      );

  bool get displaySaveButton => formStatus.isValidated;
  bool get displayCreateProfileButton => formStatus.isValidated && userFileImg.path != "";
}
