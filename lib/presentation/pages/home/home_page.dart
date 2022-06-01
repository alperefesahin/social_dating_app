import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/application/maps/maps_cubit.dart';
import 'package:social_dating_app/injection.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authCubit = getIt<AuthCubit>();

    return BlocBuilder<MapsCubit, MapsState>(
      builder: (context, state) {
        final authState = authCubit.state;
        final isUserLocationKnown =
            state.userLocation.latOfCurrentLocation == null || state.userLocation.longOfCurrentLocation == null;

        return isUserLocationKnown
            ? const CustomProgressIndicator(
                progressIndicatorColor: blackColor,
              )
            : HomePageBody(
                authState: authState,
                mapsState: state,
              );
      },
    );
  }
}
