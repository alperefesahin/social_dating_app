// ignore_for_file: no_logic_in_create_state, must_be_immutable
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/application/auth/auth_state.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';
import 'package:social_dating_app/providers/auth/auth_state_provider.dart';

class HomePageNavigator extends ConsumerWidget {
  const HomePageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<bool>(
      authStateProvider.select((value) => value.isUserSignedIn),
      (p, c) {
        if (c) {
          AutoRouter.of(context).replace(const HomeRouteNavigator());
        } else if (!c) {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
    );

    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: AutoTabsScaffold(
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
            CupertinoIcons.profile_circled,
            CupertinoIcons.map,
          ],
          onTap: tabsRouter.setActiveIndex,
        ),
        routes: const [
          HomeRoute(),
          ProfileRoute(),
        ],
      ),
    );
  }
}
