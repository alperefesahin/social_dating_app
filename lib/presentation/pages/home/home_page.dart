import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /* state.userLocation.latOfCurrentLocation == null || state.userLocation.longOfCurrentLocation == null
            ? const CustomProgressIndicator(
                progressIndicatorColor: blackColor,
              )
            :  */
        const HomePageBody();
  }
}
