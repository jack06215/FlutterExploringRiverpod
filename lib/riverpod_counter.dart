import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");

class Counter extends ChangeNotifier {
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
