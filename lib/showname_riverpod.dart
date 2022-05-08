import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final widgetNameProvider = Provider<String>((ref) => "TextField Widget");
final footerMessageProvider =
    Provider<String>((ref) => "Keep learning Flutter\nHappy Coding!");

class TextFormStateNotifier extends StateNotifier<String> {
  TextFormStateNotifier() : super("Jack Cho");

  void onChangeValue(String newValue) {
    state = newValue;
  }
}
