import 'package:freezed_annotation/freezed_annotation.dart';

part 'maps_state.freezed.dart';

@freezed
class MapsState with _$MapsState {
  factory MapsState() = _MapsState;

  const MapsState._();

  factory MapsState.empty() => MapsState();
}
