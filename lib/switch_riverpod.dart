// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/model/my_switch.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final singleSwitchNameProvider =
    Provider<String>((ref) => "Single Switch Widget");
final multipleSwitchNameProvider =
    Provider<String>((ref) => "Multiple Switch Widget");
final footerMessageProvider = Provider<String>(
    (ref) => "Hope You'll Understand This! \nKeep Learning and Stay Safe");

class SingleSwitchWidgetNotifier extends StateNotifier<bool> {
  SingleSwitchWidgetNotifier() : super(false);

  void onChanged(bool changeval) {
    state = changeval;
  }
}

// @immutable
// class MySwitch {
//   const MySwitch({
//     required this.id,
//     this.value = false,
//   });
//   final int id;
//   final bool value;
// }
class MultipleSwitchWidgetNotifier extends StateNotifier<List<MySwitch>> {
  MultipleSwitchWidgetNotifier([List<MySwitch>? initialMySwitch])
      : super(initialMySwitch ?? []);

  void toggle(int id) {
    state = [
      for (final item in state)
        if (item.id == id) MySwitch(id: item.id, value: !item.value) else item
    ];
  }
}
