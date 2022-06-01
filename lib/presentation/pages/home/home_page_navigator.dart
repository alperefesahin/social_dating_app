// ignore_for_file: no_logic_in_create_state, must_be_immutable
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/custom_float_action_button.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';

class HomePageNavigator extends StatelessWidget {
  const HomePageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const CustomFloatActionButton(),
      bottomNavigationBuilder: (_, tabsRouter) => AnimatedBottomNavigationBar(
        activeIndex: tabsRouter.activeIndex,
        inactiveColor: greyColor,
        activeColor: customIndigoColor,
        iconSize: 30,
        elevation: 75,
        notchMargin: 15,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.softEdge,
        icons: const [
          Icons.home,
          CupertinoIcons.search,
          CupertinoIcons.profile_circled,
        ],
        onTap: tabsRouter.setActiveIndex,
      ),
      routes: const [
        HomeRoute(),
        MapsRoute(),
        ProfileRoute(),
      ],
    );
  }
}
