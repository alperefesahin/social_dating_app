import 'package:freezed_annotation/freezed_annotation.dart';
part 'maps_event.freezed.dart';

@freezed
class MapsEvent with _$MapsEvent {
  const factory MapsEvent.getCurrentLocationOfTheCurrentUser() = GetCurrentLocationOfTheCurrentUser;
}
