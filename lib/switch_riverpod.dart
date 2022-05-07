// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final singleSiwtchNameProvider =
    Provider<String>((ref) => "Single Siwtch Provider");
final multipleSwitchNameProvider =
    Provider<String>((ref) => "Keep leaning Flutter\nHappy Coding");

class SingleSwitchNotifier extends StateNotifier<bool> {
  SingleSwitchNotifier() : super(false);

  get value => state;

  void onChange(bool changeval) {
    state = changeval;
  }
}

class MultipleSwitchNotifier extends StateNotifier<List<bool>> {
  MultipleSwitchNotifier() : super([]) {
    state = List.filled(3, false);
  }

  get value1 => state[0];
  get value2 => state[1];
  get value3 => state[2];

  void onChangeMultipleOne(changeval) {
    state[0] = changeval;
  }

  void onChangeMultipleTwo(changeval) {
    state[1] = changeval;
  }

  void onChangeMultipleThree(changeval) {
    state[2] = changeval;
  }
}
