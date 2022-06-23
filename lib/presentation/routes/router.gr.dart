// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../domain/user_profile/user_profile_model.dart' as _i13;
import '../pages/about/about_page.dart' as _i4;
import '../pages/feed/feed_page.dart' as _i8;
import '../pages/home_landing/home_landing_page.dart' as _i3;
import '../pages/landing/landing_page.dart' as _i1;
import '../pages/maps/maps_page.dart' as _i9;
import '../pages/navigator/page_navigator.dart' as _i2;
import '../pages/profile/profile_edit/profile_edit_page.dart' as _i5;
import '../pages/profile/profile_page/profile_page.dart' as _i10;
import '../pages/sign_in/sign_in_page.dart' as _i6;
import '../pages/verification_page/sign_in_verification_page.dart' as _i7;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LandingPage());
    },
    RouteNavigator.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PageNavigator());
    },
    HomeLandingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeLandingPage());
    },
    AboutRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AboutPage());
    },
    ProfileEditRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileEditRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ProfileEditPage(key: args.key, user: args.user));
    },
    SignInRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignInPage());
    },
    SignInVerificationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignInVerificationPage());
    },
    FeedRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FeedPage());
    },
    MapsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.MapsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfilePage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(LandingRoute.name, path: '/'),
        _i11.RouteConfig(RouteNavigator.name,
            path: '/page-navigator',
            children: [
              _i11.RouteConfig(FeedRoute.name,
                  path: 'feed-page', parent: RouteNavigator.name),
              _i11.RouteConfig(MapsRoute.name,
                  path: 'maps-page', parent: RouteNavigator.name),
              _i11.RouteConfig(ProfileRoute.name,
                  path: 'profile-page', parent: RouteNavigator.name)
            ]),
        _i11.RouteConfig(HomeLandingRoute.name, path: '/home-landing-page'),
        _i11.RouteConfig(AboutRoute.name, path: '/about-page'),
        _i11.RouteConfig(ProfileEditRoute.name, path: '/profile-edit-page'),
        _i11.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i11.RouteConfig(SignInVerificationRoute.name,
            path: '/sign-in-verification-page')
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i11.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.PageNavigator]
class RouteNavigator extends _i11.PageRouteInfo<void> {
  const RouteNavigator({List<_i11.PageRouteInfo>? children})
      : super(RouteNavigator.name,
            path: '/page-navigator', initialChildren: children);

  static const String name = 'RouteNavigator';
}

/// generated route for
/// [_i3.HomeLandingPage]
class HomeLandingRoute extends _i11.PageRouteInfo<void> {
  const HomeLandingRoute()
      : super(HomeLandingRoute.name, path: '/home-landing-page');

  static const String name = 'HomeLandingRoute';
}

/// generated route for
/// [_i4.AboutPage]
class AboutRoute extends _i11.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/about-page');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i5.ProfileEditPage]
class ProfileEditRoute extends _i11.PageRouteInfo<ProfileEditRouteArgs> {
  ProfileEditRoute({_i12.Key? key, required _i13.UserProfileModel user})
      : super(ProfileEditRoute.name,
            path: '/profile-edit-page',
            args: ProfileEditRouteArgs(key: key, user: user));

  static const String name = 'ProfileEditRoute';
}

class ProfileEditRouteArgs {
  const ProfileEditRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i13.UserProfileModel user;

  @override
  String toString() {
    return 'ProfileEditRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i6.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i7.SignInVerificationPage]
class SignInVerificationRoute extends _i11.PageRouteInfo<void> {
  const SignInVerificationRoute()
      : super(SignInVerificationRoute.name, path: '/sign-in-verification-page');

  static const String name = 'SignInVerificationRoute';
}

/// generated route for
/// [_i8.FeedPage]
class FeedRoute extends _i11.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: 'feed-page');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i9.MapsPage]
class MapsRoute extends _i11.PageRouteInfo<void> {
  const MapsRoute() : super(MapsRoute.name, path: 'maps-page');

  static const String name = 'MapsRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}
