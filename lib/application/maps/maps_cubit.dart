// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
part 'maps_cubit.freezed.dart';
part 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit() : super(const MapsState.initial());

  void getCurrentPosition() async {
    emit(state.copyWith(isInProgress: true));
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then(
      (Position currentPosition) {
        emit(
          state.copyWith(
            currentPosition: currentPosition,
            isInProgress: false,
          ),
        );
      },
    );
  }

  Future<Position?> getCurrentPositionWithUserPermission() async {
    Geolocator.checkPermission().then(
      (LocationPermission locationPermission) async {
        if (locationPermission == LocationPermission.denied ||
            locationPermission == LocationPermission.denied ||
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
