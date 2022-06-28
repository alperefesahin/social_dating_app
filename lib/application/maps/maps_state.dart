import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:social_dating_app/domain/feed/feed_user_model.dart';
import 'package:social_dating_app/domain/location/user_location_model.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  factory MapsState({
    required UserLocationModel currentUserLocation,
    required LocationPermission locationPermission,
    required Set<Marker> markerList,
    required List<FeedUserModel> usersInFeed,
    required bool isInProgress,
  }) = _MapsState;
  
  const MapsState._();

  factory MapsState.empty() => MapsState(
        currentUserLocation: UserLocationModel.empty(),
        locationPermission: LocationPermission.whileInUse,
        markerList: {},
        usersInFeed: [],
        isInProgress: false,
      );

  bool get showLoadingIndicatorOrText => currentUserLocation.latOfCurrentLocation == null || isInProgress;
}
