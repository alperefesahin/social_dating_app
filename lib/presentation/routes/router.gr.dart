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

import '../../application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i10;
import '../pages/home/home_page.dart' as _i5;
import '../pages/home/home_page_navigator.dart' as _i2;
import '../pages/landing/landing_page.dart' as _i1;
import '../pages/maps/maps_page.dart' as _i6;
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
    HomeRouteNavigator.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePageNavigator());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    SignInVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<SignInVerificationRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.SignInVerificationPage(key: args.key, state: args.state));
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
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
        _i8.RouteConfig(HomeRouteNavigator.name,
            path: '/home-page-navigator',
            children: [
              _i8.RouteConfig(HomeRoute.name,
                  path: 'home-page', parent: HomeRouteNavigator.name),
              _i8.RouteConfig(MapsRoute.name,
                  path: 'maps-page', parent: HomeRouteNavigator.name),
              _i8.RouteConfig(ProfileRoute.name,
                  path: 'profile-page', parent: HomeRouteNavigator.name)
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
/// [_i2.HomePageNavigator]
class HomeRouteNavigator extends _i8.PageRouteInfo<void> {
  const HomeRouteNavigator({List<_i8.PageRouteInfo>? children})
      : super(HomeRouteNavigator.name,
            path: '/home-page-navigator', initialChildren: children);

  static const String name = 'HomeRouteNavigator';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignInVerificationPage]
class SignInVerificationRoute
    extends _i8.PageRouteInfo<SignInVerificationRouteArgs> {
  SignInVerificationRoute(
      {_i9.Key? key, required _i10.PhoneNumberSignInState state})
      : super(SignInVerificationRoute.name,
            path: '/sign-in-verification-page',
            args: SignInVerificationRouteArgs(key: key, state: state));

  static const String name = 'SignInVerificationRoute';
}

class SignInVerificationRouteArgs {
  const SignInVerificationRouteArgs({this.key, required this.state});

  final _i9.Key? key;

  final _i10.PhoneNumberSignInState state;

  @override
  String toString() {
    return 'SignInVerificationRouteArgs{key: $key, state: $state}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
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
