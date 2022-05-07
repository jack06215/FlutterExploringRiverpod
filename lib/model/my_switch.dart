// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_switch.freezed.dart';

@freezed
abstract class MySwitch with _$MySwitch {
  factory MySwitch({
    required int id,
    @Default(false) bool value,
  }) = _MySwitch;
}
