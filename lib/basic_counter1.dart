import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterRiverpod extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void add() {
    _value++;
    notifyListeners();
  }

  void subtract() {
    _value--;
    notifyListeners();
  }
}

final appCounterRiverpod = ChangeNotifierProvider<CounterRiverpod>(
  (ref) => CounterRiverpod(),
);
