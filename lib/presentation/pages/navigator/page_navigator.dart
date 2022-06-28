import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:social_dating_app/presentation/common_widgets/colors.dart';
import 'package:social_dating_app/presentation/pages/navigator/constants/texts.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';
import 'package:social_dating_app/providers/auth/auth_state_provider.dart';
import 'package:social_dating_app/providers/maps/maps_provider.dart';

// It's related to bottom navigation bar

class PageNavigator extends ConsumerWidget {
  const PageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<bool>(
      authStateProvider.select((value) => value.isUserSignedIn),
      (p, c) {
        if (c) {
          AutoRouter.of(context).replace(const RouteNavigator());
        } else if (!c) {
          AutoRouter.of(context).replace(const SignInRoute());
        }
      },
    );

    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: AutoTabsScaffold(
        bottomNavigationBuilder: (_, tabsRouter) => SalomonBottomBar(
          itemPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(
                CupertinoIcons.home,
                size: 28,
              ),
              title: const Text(
                feedText,
                style: TextStyle(fontSize: 17),
              ),
            ),
            SalomonBottomBarItem(
              icon: const Icon(
                CupertinoIcons.map,
                size: 28,
              ),
              title: const Text(
                mapsText,
                style: TextStyle(fontSize: 17),
              ),
            ),
            SalomonBottomBarItem(
              icon: const Icon(
                CupertinoIcons.person_circle,
                size: 30,
              ),
              title: const Text(
                profileText,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (index == 0 || index == 1) {
              ref.refresh(mapsStateProvider);
              tabsRouter.setActiveIndex(index);
            }
            tabsRouter.setActiveIndex(index);
          },
          selectedItemColor: customIndigoColor,
        ),
        routes: const [
          FeedRoute(),
          MapsRoute(),
          ProfileRoute(),
        ],
      ),
    );
  }
}
