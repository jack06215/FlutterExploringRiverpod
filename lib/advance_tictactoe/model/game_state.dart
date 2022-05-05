import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_riverpod_practices/advance_tictactoe/model/player_type.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/progress.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/tile.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  factory GameState(
    Map<Tile, PlayerType> tiles,
    Progress progress, {
    @Default(PlayerType.circle) PlayerType currentPlayer,
  }) = _GameState;
}
