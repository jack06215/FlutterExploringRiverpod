// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final whatWidgetProvider = Provider<String>((ref) => "Slider Widget");
final footerMessageProvider =
    Provider<String>((ref) => "Keep Flutttering\nHappy Coding");

class SliderWidget extends StateNotifier<double> {
  SliderWidget() : super(0.0);

  void onChanged(double newValue) {
    state = newValue;
  }
}
