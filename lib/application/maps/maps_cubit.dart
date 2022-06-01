// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/domain/location/user_location_model.dart';
part 'maps_cubit.freezed.dart';
part 'maps_state.dart';

@Injectable()
class MapsCubit extends Cubit<MapsState> {
  MapsCubit(this.authCubit) : super(MapsState.empty());

  final AuthCubit authCubit;
  final _firestore = FirebaseFirestore.instance;
  final List usersWithInTenKilometers = [];

  double calculateDistanceBetweenUsersAndCurrentUser(double otherUserLocationLat, double otherUserLocationLong) {
    double? currentUserLat = state.userLocation.latOfCurrentLocation;
    double? currentUserLong = state.userLocation.longOfCurrentLocation;

    final distance =
        Geolocator.distanceBetween(currentUserLat!, currentUserLong!, otherUserLocationLat, otherUserLocationLong);
    final double distanceInTenKilometers = distance / 10000;

    return distanceInTenKilometers;
  }

  void filterUsersWithRespectToDistance({
    required List users,
  }) async {
    for (var i = 0; i < users.length; i++) {
      final otherUserLocationLat = users[i]["latitude"];
      final otherUserLocationLong = users[i]["longitude"];
      final distance = calculateDistanceBetweenUsersAndCurrentUser(otherUserLocationLat, otherUserLocationLong);

      if (distance <= 10000) {
        usersWithInTenKilometers.add(users[i]);
      } else {}
    }

    emit(
      state.copyWith(
        usersWithInTenKilometers: usersWithInTenKilometers,
      ),
    );
  }

  void getCurrentPosition() async {
    emit(state.copyWith(isInProgress: true));
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then(
      (Position currentPosition) {
        final latValueOfTheCurrentPosition = currentPosition.latitude;
        final longValueOfTheCurrentPosition = currentPosition.longitude;
        final uid = authCubit.state.userModel.id;

        _firestore.collection("users").doc(uid).set(
          {
            'latitude': latValueOfTheCurrentPosition,
            'longitude': longValueOfTheCurrentPosition,
          },
          SetOptions(merge: true),
        );

        emit(
          state.copyWith(
            userLocation: UserLocationModel(
              latOfCurrentLocation: latValueOfTheCurrentPosition,
              longOfCurrentLocation: longValueOfTheCurrentPosition,
            ),
            isInProgress: false,
          ),
        );
      },
    );
  }

  Future<Position?> getCurrentPositionWithUserPermission() async {
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
                emit(
                  state.copyWith(
                    permission: LocationPermission.denied,
                  ),
                );
              } else {
                emit(
                  state.copyWith(
                    permission: requestPermission,
                  ),
                );
                getCurrentPosition();
              }
            },
          );
        } else {
          emit(
            state.copyWith(
              permission: locationPermission,
            ),
          );
          getCurrentPosition();
        }
      },
    );

    return null;
  }
}
