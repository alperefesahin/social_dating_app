import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/application/profile/profile_state.dart';
import 'package:social_dating_app/domain/user_profile/about_model.dart';
import 'package:social_dating_app/domain/user_profile/status_model.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier(this._read) : super(ProfileState.empty());

  final Reader _read;

  void mapEventsToState(ProfileEvent event) {
    event.map(statusChanged: (statusChangedEvent) {
      final userStatus = Status.dirty(statusChangedEvent.statusText);

      state = state.copyWith(
        userStatus: userStatus,
        formStatus: Formz.validate(
          [userStatus, state.userAbout],
        ),
      );
    }, aboutChanged: (aboutChangedEvent) {
      final userAbout = About.dirty(aboutChangedEvent.aboutText);

      state = state.copyWith(
        userAbout: userAbout,
        formStatus: Formz.validate(
          [state.userStatus, userAbout],
        ),
      );
    }, changeOnlineStatus: (changeOnlineStatusEvent) {
      final onlineStatus = changeOnlineStatusEvent.onlineStatus;

      state = state.copyWith(
        currentUserProfile: UserProfileModel(
          imageUrl: state.currentUserProfile.imageUrl,
          status: state.currentUserProfile.status,
          userName: state.currentUserProfile.userName,
          about: state.currentUserProfile.about,
          onlineStatus: onlineStatus,
        ),
      );
    });
  }

  Future<void> getCurrentUser() async {
    final firestore = _read(firestoreProvider);
    final uid = _read(authRepositoryProvider).getCurrentUser()!.uid;
    final currentUser = await firestore.collection("users").doc(uid).get();
    final currentUserData = currentUser.data()!;
    state = state.copyWith(
      currentUserProfile: UserProfileModel(
        imageUrl: currentUserData["imageURL"],
        status: currentUserData["status"],
        userName: currentUserData["userName"],
        about: currentUserData["about"],
        onlineStatus: false, //! Change this
      ),
    );
  }
}
