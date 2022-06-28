import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/application/profile/profile_state.dart';
import 'package:social_dating_app/domain/user_profile/about_model.dart';
import 'package:social_dating_app/domain/user_profile/status_model.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/domain/user_profile/username_model.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier(this._read) : super(ProfileState.empty());

  final Reader _read;

  void mapEventsToState(ProfileEvent event) {
    event.map(
      usernameChanged: (usernameChangedEvent) {
        final userName = Username.dirty(usernameChangedEvent.usernameText);
        final usernameText = usernameChangedEvent.usernameText;

        state = state.copyWith(
          userName: userName,
          formStatus: Formz.validate(
            [userName, state.userStatus, state.userAbout],
          ),
          currentUserProfile: UserProfileModel(
            imageUrl: state.currentUserProfile.imageUrl,
            status: state.currentUserProfile.status,
            userName: usernameText,
            about: state.currentUserProfile.about,
            isUserChecked: state.currentUserProfile.isUserChecked,
            onlineStatus: state.currentUserProfile.onlineStatus,
          ),
        );
      },
      statusChanged: (statusChangedEvent) {
        final userStatus = Status.dirty(statusChangedEvent.statusText);
        final statusText = statusChangedEvent.statusText;

        state = state.copyWith(
          userStatus: userStatus,
          formStatus: Formz.validate(
            [state.userName, userStatus, state.userAbout],
          ),
          currentUserProfile: UserProfileModel(
            imageUrl: state.currentUserProfile.imageUrl,
            status: statusText,
            userName: state.currentUserProfile.userName,
            about: state.currentUserProfile.about,
            isUserChecked: state.currentUserProfile.isUserChecked,
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
            [state.userName, state.userStatus, userAbout],
          ),
          currentUserProfile: UserProfileModel(
            imageUrl: state.currentUserProfile.imageUrl,
            status: state.currentUserProfile.status,
            userName: state.currentUserProfile.userName,
            about: aboutText,
            isUserChecked: state.currentUserProfile.isUserChecked,
            onlineStatus: state.currentUserProfile.onlineStatus,
          ),
        );
      },
      changeOnlineStatus: (changeOnlineStatusEvent) {
        if (state.isInProgress) {
          return;
        }

        final onlineStatus = changeOnlineStatusEvent.onlineStatus;

        state = state.copyWith(
          currentUserProfile: UserProfileModel(
            imageUrl: state.currentUserProfile.imageUrl,
            status: state.currentUserProfile.status,
            userName: state.currentUserProfile.userName,
            about: state.currentUserProfile.about,
            isUserChecked: state.currentUserProfile.isUserChecked,
            onlineStatus: onlineStatus,
          ),
        );
      },
      updateUserFileImg: (updateUserFileImgEvent) {
        final userFileImg = updateUserFileImgEvent.imageFile;
        state = state.copyWith(userFileImg: userFileImg);
      },
    );
  }

  Future<void> updateProfileInformations() async {
    if (state.isInProgress) {
      return;
    }

    state = state.copyWith(isInProgress: true, isSavingProcessCompletedSuccesfully: false);

    final firestore = _read(firestoreProvider);
    final uid = _read(authRepositoryProvider).getCurrentUser()!.uid;
    final currentUser = firestore.collection("users").doc(uid);

    await currentUser.update(
      {
        "status": state.currentUserProfile.status,
        "about": state.currentUserProfile.about,
        "onlineStatus": state.currentUserProfile.onlineStatus,
      },
    ).whenComplete(() => state = state.copyWith(isInProgress: false, isSavingProcessCompletedSuccesfully: true));
  }

  Future<void> createProfile() async {
    if (state.isInProgress) {
      return;
    }

    state = state.copyWith(isInProgress: true, isCreatingProfileProcessCompletedSuccesfully: false);

    final firestore = _read(firestoreProvider);
    final uid = _read(authRepositoryProvider).getCurrentUser()!.uid;
    final currentUser = firestore.collection("users").doc(uid);
    final userUploadedImage = _read(firebaseStorage).ref(uid);

    await userUploadedImage.putFile(state.userFileImg).then(
      (p0) async {
        downloadUrl().then(
          (value) async {
            await currentUser.set(
              {
                "status": state.currentUserProfile.status,
                "about": state.currentUserProfile.about,
                "userName": state.currentUserProfile.userName,
                "onlineStatus": state.currentUserProfile.onlineStatus,
                "isUserChecked": true,
              },
              SetOptions(merge: true),
            ).whenComplete(
              () => state = state.copyWith(
                isInProgress: false,
                isCreatingProfileProcessCompletedSuccesfully: true,
              ),
            );
          },
        );
      },
    );
  }

  Future<void> downloadUrl() async {
    final firestore = _read(firestoreProvider);
    final uid = _read(authRepositoryProvider).getCurrentUser()!.uid;
    final currentUser = firestore.collection("users").doc(uid);
    final userUploadedImage = _read(firebaseStorage).ref(uid);

    await userUploadedImage.getDownloadURL().then(
      (imageURL) async {
        await currentUser.set(
          {
            "imageURL": imageURL,
          },
          SetOptions(merge: true),
        );
      },
    );
  }

  Future<void> getCurrentUser() async {
    if (state.isInProgress) {
      return;
    }

    state = state.copyWith(isInProgress: true);

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
        isUserChecked: currentUserData["isUserChecked"],
      ),
      isInProgress: false,
    );
  }
}
