// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loggedInRoute,
    ];

RouteBase get $loggedInRoute => GoRouteData.$route(
      path: '/',
      factory: $LoggedInRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'extra-page',
          factory: $ExtraPageRouteExtension._fromState,
        ),
      ],
    );

extension $LoggedInRouteExtension on LoggedInRoute {
  static LoggedInRoute _fromState(GoRouterState state) => const LoggedInRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ExtraPageRouteExtension on ExtraPageRoute {
  static ExtraPageRoute _fromState(GoRouterState state) => ExtraPageRoute(
        $extra: state.extra as ExtraClass?,
      );

  String get location => GoRouteData.$location(
        '/extra-page',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}
