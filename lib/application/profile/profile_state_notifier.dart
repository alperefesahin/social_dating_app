import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/profile/profile_event.dart';
import 'package:social_dating_app/application/profile/profile_state.dart';
import 'package:social_dating_app/domain/user_profile/user_profile_model.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier(this._read) : super(ProfileState.empty());

  final Reader _read;

  void mapEventsToState(ProfileEvent event) {
    event.map(
      statusChanged: (statusChangedEvent) {},
      aboutChanged: (aboutChangedEvent) {},
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
        onlineStatus: false, //! Change this
      ),
    );
  }
}
