import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/maps/maps_state.dart';

class MapsStateNotifier extends StateNotifier<MapsState> {
  MapsStateNotifier() : super(MapsState.empty());
}
