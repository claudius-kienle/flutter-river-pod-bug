import 'package:flutter/material.dart';
import 'package:flutter_riverpod_bug/extra_class.dart';
import 'package:flutter_riverpod_bug/main.dart';
import 'package:flutter_riverpod_bug/main_page.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<LoggedInRoute>(path: '/', routes: [
  TypedGoRoute<ExtraPageRoute>(path: 'extra-page'),
])
@immutable
class LoggedInRoute extends GoRouteData {
  const LoggedInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MainPage();
}

@immutable
class ExtraPageRoute extends GoRouteData {
  const ExtraPageRoute({this.$extra});

  final ExtraClass? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ExtraPage(extra: $extra!);
}
