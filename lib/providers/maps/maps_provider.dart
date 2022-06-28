import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/maps/maps_state.dart';
import 'package:social_dating_app/application/maps/maps_state_notifier.dart';

final mapsStateProvider = StateNotifierProvider.autoDispose<MapsStateNotifier, MapsState>(
  (ref) => MapsStateNotifier(ref.read)
    ..getUsersMarkers()
    ..getCurrentPositionWithUserPermission(),
);
