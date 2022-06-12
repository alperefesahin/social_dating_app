import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:social_dating_app/domain/location/user_location_model.dart';
import 'package:social_dating_app/providers/maps/maps_provider.dart';

class MapsPage extends ConsumerWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapState = ref.watch(mapsStateProvider);
    final currentUserLocation = mapState.currentUserLocation;
    final usersMarkers = ref.read(mapsStateProvider).markerList;

    return currentUserLocation == UserLocationModel.empty()
        ? const Center(child: Text("data"))
        : GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                currentUserLocation.latOfCurrentLocation!,
                currentUserLocation.longOfCurrentLocation!,
              ),
              zoom: 14.4746,
            ),
            markers: usersMarkers,
          );
  }
}
