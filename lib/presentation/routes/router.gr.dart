// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i8;
import '../pages/home/home_page_navigator.dart' as _i3;
import '../pages/home/widgets/home_page_body.dart' as _i4;
import '../pages/landing/landing_page.dart' as _i5;
import '../pages/sign_in/sign_in_page.dart' as _i1;
import '../pages/verification_page/sign_in_verification_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    SignInVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<SignInVerificationRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.SignInVerificationPage(key: args.key, state: args.state));
    },
    HomeRouteNavigator.name: (routeData) {
      final args = routeData.argsAs<HomeRouteNavigatorArgs>(
          orElse: () => const HomeRouteNavigatorArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePageNavigator(key: args.key));
    },
    HomeRouteBody.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePageBody());
    },
    LandingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LandingPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(SignInVerificationRoute.name,
            path: '/sign-in-verification-page'),
        _i6.RouteConfig(HomeRouteNavigator.name, path: '/home-page-navigator'),
        _i6.RouteConfig(HomeRouteBody.name, path: '/home-page-body'),
        _i6.RouteConfig(LandingRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignInVerificationPage]
class SignInVerificationRoute
    extends _i6.PageRouteInfo<SignInVerificationRouteArgs> {
  SignInVerificationRoute(
      {_i7.Key? key, required _i8.PhoneNumberSignInState state})
      : super(SignInVerificationRoute.name,
            path: '/sign-in-verification-page',
            args: SignInVerificationRouteArgs(key: key, state: state));

  static const String name = 'SignInVerificationRoute';
}

class SignInVerificationRouteArgs {
  const SignInVerificationRouteArgs({this.key, required this.state});

  final _i7.Key? key;

  final _i8.PhoneNumberSignInState state;

  @override
  String toString() {
    return 'SignInVerificationRouteArgs{key: $key, state: $state}';
  }
}

/// generated route for
/// [_i3.HomePageNavigator]
class HomeRouteNavigator extends _i6.PageRouteInfo<HomeRouteNavigatorArgs> {
  HomeRouteNavigator({_i7.Key? key})
      : super(HomeRouteNavigator.name,
            path: '/home-page-navigator',
            args: HomeRouteNavigatorArgs(key: key));

  static const String name = 'HomeRouteNavigator';
}

class HomeRouteNavigatorArgs {
  const HomeRouteNavigatorArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'HomeRouteNavigatorArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomePageBody]
class HomeRouteBody extends _i6.PageRouteInfo<void> {
  const HomeRouteBody() : super(HomeRouteBody.name, path: '/home-page-body');

  static const String name = 'HomeRouteBody';
}

/// generated route for
/// [_i5.LandingPage]
class LandingRoute extends _i6.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}
