import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required UserProfileModel currentUserProfile,
  }) = _ProfileState;
  const ProfileState._();

  factory ProfileState.empty() => ProfileState(
        currentUserProfile: UserProfileModel.empty(),
      );
}
