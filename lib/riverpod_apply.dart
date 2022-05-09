import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final appSettingProvider = Provider<String>((ref) => "Setting");
final widgetNameProvider = Provider<String>((ref) => "Text Changer Font size");
final footerMessageProvider =
    Provider<String>((ref) => "Keep learning Flutter\nHappy Coding");

class ChangeFontNotifier extends StateNotifier<double> {
  ChangeFontNotifier() : super(15);

  double get size => state;

  void increaseSize(double newValue) {
    state = newValue.abs();
  }
}
