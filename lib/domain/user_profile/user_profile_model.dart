import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String imageUrl,
    required String status,
    required String userName,
    required String about,
    required bool isUserChecked,
    required bool onlineStatus,
  }) = _UserProfileModel;

  factory UserProfileModel.empty() => const UserProfileModel(
        imageUrl: '',
        status: '',
        about: '',
        userName: '',
        isUserChecked: false,
        onlineStatus: true,
      );
}
