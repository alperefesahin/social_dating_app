// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
import 'package:social_dating_app/presentation/pages/about/about_page.dart';
import 'package:social_dating_app/presentation/pages/feed/feed_page.dart';
import 'package:social_dating_app/presentation/pages/home_landing/home_landing_page.dart';
import 'package:social_dating_app/presentation/pages/landing/landing_page.dart';
import 'package:social_dating_app/presentation/pages/maps/maps_page.dart';
import 'package:social_dating_app/presentation/pages/navigator/page_navigator.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_edit/profile_edit_page.dart';
import 'package:social_dating_app/presentation/pages/profile/profile_page/profile_page.dart';
import 'package:social_dating_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:social_dating_app/presentation/pages/verification_page/sign_in_verification_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LandingPage,
      initial: true,
    ),
    AutoRoute(
      page: PageNavigator,
      children: [
        AutoRoute(
          page: FeedPage,
        ),
        AutoRoute(
          page: MapsPage,
        ),
        AutoRoute(
          page: ProfilePage,
        ),
      ],
    ),
    AutoRoute(
      page: HomeLandingPage,
    ),
    AutoRoute(
      page: AboutPage,
    ),
    AutoRoute(
      page: ProfileEditPage,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: SignInVerificationPage,
    ),
  ],
)
class $AppRouter {}
