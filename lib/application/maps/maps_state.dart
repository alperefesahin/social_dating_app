part of 'maps_cubit.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState({
    required LocationPermission? permission,
    required bool isInProgress,
    required UserLocationModel userLocation,
    required Set usersWithInTenKilometers,
  }) = _Initial;

  const MapsState._();

  factory MapsState.empty() => MapsState(
        userLocation: UserLocationModel.empty(),
        permission: LocationPermission.denied,
        isInProgress: false,
        usersWithInTenKilometers: {},
      );
}
