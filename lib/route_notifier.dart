import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouteNotifier extends AsyncNotifier<bool> {
  @override
  Future<bool> build() async {
    return true;
  }

  void updateState() {
    state = AsyncValue.data(state.valueOrNull ?? false);
  }
}

final routeNotifierProvider =
    AsyncNotifierProvider<RouteNotifier, bool>(() => RouteNotifier());
