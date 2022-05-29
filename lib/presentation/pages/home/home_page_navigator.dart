// ignore_for_file: no_logic_in_create_state, must_be_immutable
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_dating_app/application/auth/auth_cubit.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/common_widgets/custom_progress_indicator.dart';
import 'package:social_dating_app/presentation/pages/home/constants/pages.dart';
import 'package:social_dating_app/presentation/pages/home/widgets/custom_float_action_button.dart';

class HomePageNavigator extends StatefulWidget {
  HomePageNavigator({Key? key}) : super(key: key);

  static Page page() => MaterialPage<void>(child: HomePageNavigator());
  int activeIndex = 0;

  @override
  State<HomePageNavigator> createState() => _HomePageNavigatorState();
}

class _HomePageNavigatorState extends State<HomePageNavigator> {
  _HomePageNavigatorState();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.isInProgress
            ? const Scaffold(
                body: CustomProgressIndicator(
                  progressIndicatorColor: blackColor,
                ),
              )
            : Scaffold(
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                floatingActionButton: const CustomFloatActionButton(),
                bottomNavigationBar: AnimatedBottomNavigationBar(
                  activeIndex: widget.activeIndex,
                  inactiveColor: greyColor,
                  activeColor: customIndigoColor,
                  iconSize: 30,
                  elevation: 75,
                  notchMargin: 15,
                  gapLocation: GapLocation.center,
                  notchSmoothness: NotchSmoothness.softEdge,
                  leftCornerRadius: 32,
                  rightCornerRadius: 32,
                  icons: const [
                    Icons.home,
                    CupertinoIcons.search,
                    CupertinoIcons.bubble_left,
                    CupertinoIcons.profile_circled,
                  ],
                  onTap: (int value) {
                    setState(() {
                      widget.activeIndex = value;
                    });
                  },
                ),
                body: pages[widget.activeIndex],
              );
      },
    );
  }
}
