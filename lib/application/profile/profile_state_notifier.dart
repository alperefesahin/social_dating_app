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
    event.map(
      statusChanged: (statusChangedEvent) {
        final userStatus = Status.dirty(statusChangedEvent.statusText);
        final statusText = statusChangedEvent.statusText;

        state = state.copyWith(
          userStatus: userStatus,
          formStatus: Formz.validate(
            [userStatus, state.userAbout],
          ),
          currentUserProfile: UserProfileModel(
            imageUrl: state.currentUserProfile.imageUrl,
            status: statusText,
            userName: state.currentUserProfile.userName,
            about: state.currentUserProfile.about,
            onlineStatus: state.currentUserProfile.onlineStatus,
          ),
        );
      },
      aboutChanged: (aboutChangedEvent) {
        final userAbout = About.dirty(aboutChangedEvent.aboutText);
        final aboutText = aboutChangedEvent.aboutText;

        state = state.copyWith(
          userAbout: userAbout,
          formStatus: Formz.validate(
            [state.userStatus, userAbout],
          ),
          currentUserProfile: UserProfileModel(
            imageUrl: state.currentUserProfile.imageUrl,
            status: state.currentUserProfile.status,
            userName: state.currentUserProfile.userName,
            about: aboutText,
            onlineStatus: state.currentUserProfile.onlineStatus,
          ),
        );
      },
      changeOnlineStatus: (changeOnlineStatusEvent) {
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
      },
    );
  }

  Future<void> updateProfileInformations() async {
    final firestore = _read(firestoreProvider);
    final uid = _read(authRepositoryProvider).getCurrentUser()!.uid;
    final currentUser = firestore.collection("users").doc(uid);

    state = state.copyWith(isInProgress: true, isSavingProcessCompletedSuccesfully: false);

    await currentUser.update(
      {
        "status": state.currentUserProfile.status,
        "about": state.currentUserProfile.about,
        "onlineStatus": state.currentUserProfile.onlineStatus,
      },
    ).then(
      (value) {
        state = state.copyWith(isInProgress: false, isSavingProcessCompletedSuccesfully: true);
      },
    );
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
        onlineStatus: currentUserData["onlineStatus"],
      ),
    );
  }
}
