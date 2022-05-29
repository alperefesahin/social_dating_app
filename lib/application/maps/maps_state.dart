part of 'maps_cubit.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState.initial({
    @Default(null) Position? currentPosition,
    @Default(LocationPermission.denied) LocationPermission? permission,
    @Default(false) bool isInProgress,
  }) = _Initial;
}
