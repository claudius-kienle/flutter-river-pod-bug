import 'package:flutter/material.dart';
import 'package:flutter_riverpod_bug/extra_class.dart';
import 'package:flutter_riverpod_bug/route_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExtraPage extends ConsumerWidget {
  const ExtraPage({super.key, required this.extra});

  final ExtraClass extra;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(extra.content),
            FilledButton(
                onPressed: () =>
                    ref.read(routeNotifierProvider.notifier).updateState(),
                child: Text("Click to reload router"))
          ]),
    );
  }
}
