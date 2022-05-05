import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void add() => state++;
  void subtract() => state--;
}

final counterState =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());
