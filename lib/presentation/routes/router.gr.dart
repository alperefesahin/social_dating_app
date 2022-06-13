// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../pages/feed/feed_page.dart' as _i5;
import '../pages/landing/landing_page.dart' as _i1;
import '../pages/maps/maps_page.dart' as _i6;
import '../pages/navigator/page_navigator.dart' as _i2;
import '../pages/profile/profile_page.dart' as _i7;
import '../pages/sign_in/sign_in_page.dart' as _i3;
import '../pages/verification_page/sign_in_verification_page.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LandingPage());
    },
    RouteNavigator.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PageNavigator());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    SignInVerificationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInVerificationPage());
    },
    FeedRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FeedPage());
    },
    MapsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MapsPage());
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(LandingRoute.name, path: '/'),
        _i8.RouteConfig(RouteNavigator.name,
            path: '/page-navigator',
            children: [
              _i8.RouteConfig(FeedRoute.name,
                  path: 'feed-page', parent: RouteNavigator.name),
              _i8.RouteConfig(MapsRoute.name,
                  path: 'maps-page', parent: RouteNavigator.name),
              _i8.RouteConfig(ProfileRoute.name,
                  path: 'profile-page', parent: RouteNavigator.name)
            ]),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(SignInVerificationRoute.name,
            path: '/sign-in-verification-page')
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i8.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.PageNavigator]
class RouteNavigator extends _i8.PageRouteInfo<void> {
  const RouteNavigator({List<_i8.PageRouteInfo>? children})
      : super(RouteNavigator.name,
            path: '/page-navigator', initialChildren: children);

  static const String name = 'RouteNavigator';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignInVerificationPage]
class SignInVerificationRoute extends _i8.PageRouteInfo<void> {
  const SignInVerificationRoute()
      : super(SignInVerificationRoute.name, path: '/sign-in-verification-page');

  static const String name = 'SignInVerificationRoute';
}

/// generated route for
/// [_i5.FeedPage]
class FeedRoute extends _i8.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: 'feed-page');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i6.MapsPage]
class MapsRoute extends _i8.PageRouteInfo<void> {
  const MapsRoute() : super(MapsRoute.name, path: 'maps-page');

  static const String name = 'MapsRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}
