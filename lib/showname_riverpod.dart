// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final controllerProvider =
    StateNotifierProvider<Controller, List<Future<String>>>(
        (ref) => Controller(ref.read));

final futureProvider =
    FutureProvider.autoDispose.family<String, String>((ref, str) async {
  final ret = await Future.delayed(const Duration(seconds: 1), () => str);
  ref.maintainState = true;
  return ret;
});

class Controller extends StateNotifier<List<Future<String>>> {
  Controller(this._read) : super([]);

  final Reader _read;

  void add(String str) {
    final f = _read(futureProvider(str).future);
    state = [f, ...state];
  }
}
