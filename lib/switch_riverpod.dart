import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appNameRiverpod = Provider<String>((ref) => "Exploring Riverpod");
final singleswitchName = Provider<String>((ref) => "Single Switch Widget");
final multipleswitchName = Provider<String>((ref) => "Multiple Switch Widget");
final hopeRiverpod = Provider<String>(
    (ref) => "Hope You'll Understand This! \nKeep Learning and Stay Safe");

class SwitchWidgetNotifier extends StateNotifier<bool> {
  SwitchWidgetNotifier() : super(false);

  bool get value => state;

  void onChanged(bool changeval) {
    state = changeval;
  }
}

class MultipleSwitchWidget extends ChangeNotifier {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;

  bool get value1 => _value1;
  bool get value2 => _value2;
  bool get value3 => _value3;

  void onChangedMultipleOne(changeval1) {
    _value1 = changeval1;
    notifyListeners();
  }

  void onChangedMultipleTwo(changeval2) {
    _value2 = changeval2;
    notifyListeners();
  }

  void onChangedMultipleThree(changeval3) {
    _value3 = changeval3;
    notifyListeners();
  }
}
