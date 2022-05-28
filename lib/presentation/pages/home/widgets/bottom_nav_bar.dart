import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      inactiveColor: greyColor,
      activeColor: customIndigoColor,
      iconSize: 30,
      elevation: 75,
      notchMargin: 15,
      icons: const [
        Icons.home,
        CupertinoIcons.search,
        CupertinoIcons.bubble_left,
        CupertinoIcons.profile_circled,
      ],
      activeIndex: 0,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (int value) {},
    );
  }
}
