import 'package:flutter/material.dart';
import 'package:flutter_riverpod_bug/extra_class.dart';
import 'package:flutter_riverpod_bug/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
