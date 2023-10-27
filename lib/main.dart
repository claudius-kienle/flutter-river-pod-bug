import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_bug/extra_class.dart';
import 'package:flutter_riverpod_bug/route_notifier.dart';
import 'package:flutter_riverpod_bug/routes.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    debugLogDiagnostics: false,
    redirect: (context, state) {
      log("Going to ${state.uri} with extra ${state.extra}");
      return null;
    },
    refreshListenable: routeNotifier,
    routes: $appRoutes);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () => const ExtraPageRoute(
                        $extra: ExtraClass(content: "This is the content"))
                    .go(context),
                child: const Text("Go to extra page"))
          ]),
    );
  }
}

class ExtraPage extends StatelessWidget {
  const ExtraPage({super.key, required this.extra});

  final ExtraClass extra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(extra.content),
            FilledButton(
                onPressed: () => routeNotifier.value = !routeNotifier.value,
                child: Text("Click to reload router"))
          ]),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
