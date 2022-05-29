import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:social_dating_app/application/maps/maps_cubit.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/maps/widgets/maps_page_body.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => MapsCubit()..getCurrentPositionWithUserPermission(),
        child: Builder(
          builder: (context) {
            return BlocBuilder<MapsCubit, MapsState>(
              builder: (context, state) {
                print(state.permission.toString() + "213123123");
                return state.permission == LocationPermission.denied
                    ? const Center(
                        child: Text("data",style: TextStyle(fontSize: 50),),
                      )
                    : state.isInProgress
                        ? const CustomProgressIndicator(
                            progressIndicatorColor: blackColor,
                          )
                        : Scaffold(
                            body: MapsPageBody(
                              mapsState: state,
                            ),
                          );
              },
            );
          },
        ),
      ),
    );
  }
}
