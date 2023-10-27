import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_bug/route_notifier.dart';
import 'package:flutter_riverpod_bug/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

String? _onRedirect(
    ProviderRef<GoRouter> ref, BuildContext context, GoRouterState state) {
  log("Going to ${state.uri} with extra ${state.extra}");
  return null;
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      debugLogDiagnostics: false,
      redirect: (context, state) => _onRedirect(ref, context, state),
      refreshListenable: RouterNotifier(ref),
      routes: $appRoutes);
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen(routeNotifierProvider, (_, __) => notifyListeners());
  }
}
