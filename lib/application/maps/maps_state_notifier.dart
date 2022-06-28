import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:social_dating_app/application/maps/maps_state.dart';
import 'package:social_dating_app/domain/feed/feed_user_model.dart';
import 'package:social_dating_app/domain/location/user_location_model.dart';
import 'package:social_dating_app/providers/firebase/firebase_provider.dart';
import 'package:geolocator/geolocator.dart';

class MapsStateNotifier extends StateNotifier<MapsState> {
  MapsStateNotifier(this._read) : super(MapsState.empty());

  final Reader _read;
  final Completer<GoogleMapController> _controller = Completer();

  Future<void> getUsersMarkers() async {
    if (state.isInProgress) {
      return;
    }

    final firestore = _read(firestoreProvider);
    final getUsersFromFirestore = await firestore.collection("users").get();
    final Set<Marker> markerList = {};
    final List<FeedUserModel> usersInFeed = [];

    state = state.copyWith(isInProgress: true);

    getUsersFromFirestore.docs.map((e) => e.data()).toList().forEach(
      (user) {
        markerList.add(
          Marker(
            position: LatLng(
              user["latitude"] ?? 0,
              user["longitude"] ?? 0,
            ),
            markerId: MarkerId(
              user["uid"],
            ),
            infoWindow: InfoWindow(
              title: user["userName"],
            ),
            onTap: () async {
              final controller = await _controller.future;
              controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    zoom: 18,
                    target: LatLng(
                      user["latitude"],
                      user["longitude"],
                    ),
                  ),
                ),
              );
            },
          ),
        );

        usersInFeed.add(
          FeedUserModel(
            imageUrl: user["imageURL"],
            status: user["status"],
            userName: user["userName"],
            isUserOnline: user["onlineStatus"],
          ),
        );
      },
    );
    state = state.copyWith(
      markerList: markerList,
      usersInFeed: usersInFeed,
      isInProgress: false,
    );
  }

  Future<void> getCurrentPosition() async {
    if (state.isInProgress) {
      return;
    }

    state = state.copyWith(isInProgress: true);

    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then(
      (Position currentPosition) {
        final latValueOfTheCurrentPosition = currentPosition.latitude;
        final longValueOfTheCurrentPosition = currentPosition.longitude;
        final uid = _read(authRepositoryProvider).getCurrentUser()!.uid;
        final firestore = _read(firestoreProvider);

        firestore.collection("users").doc(uid).set(
          {
            'latitude': latValueOfTheCurrentPosition,
            'longitude': longValueOfTheCurrentPosition,
          },
          SetOptions(merge: true),
        );

        state = state.copyWith(
          isInProgress: false,
          currentUserLocation: UserLocationModel(
            latOfCurrentLocation: latValueOfTheCurrentPosition,
            longOfCurrentLocation: longValueOfTheCurrentPosition,
          ),
        );
      },
    );
  }

  Future<void> getCurrentPositionWithUserPermission() async {
    if (state.isInProgress) {
      return;
    }

    state = state.copyWith(isInProgress: true);
    
    await Geolocator.checkPermission().then(
      (LocationPermission locationPermission) async {
        if (locationPermission == LocationPermission.denied ||
            locationPermission == LocationPermission.deniedForever ||
            locationPermission == LocationPermission.unableToDetermine) {
          await Geolocator.requestPermission().then(
            (LocationPermission requestPermission) async {
              if (requestPermission == LocationPermission.denied ||
                  requestPermission == LocationPermission.deniedForever ||
                  requestPermission == LocationPermission.unableToDetermine) {
                state = state.copyWith(
                  locationPermission: LocationPermission.denied,
                );
              } else {
                state = state.copyWith(
                  locationPermission: requestPermission,
                  isInProgress: false,
                );

                getCurrentPosition();
              }
            },
          );
        } else {
          state = state.copyWith(
            locationPermission: locationPermission,
            isInProgress: false,
          );

          getCurrentPosition();
        }
      },
    );
  }
}
