import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_riverpod_practices/advance_tictactoe/model/finished_state.dart';

part 'progress.freezed.dart';

@freezed
abstract class Progress with _$Progress {
  factory Progress.finished(FinishedState winner) = Finished;
  factory Progress.inProgress() = InProgress;
}
