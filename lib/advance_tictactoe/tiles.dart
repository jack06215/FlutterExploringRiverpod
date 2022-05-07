// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/advance_tictactoe/circle_painter.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/controller/game_state_notifier.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/cross_painter.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/finished_state.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/game_state.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/player_type.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/progress.dart';
import 'package:flutter_riverpod_practices/advance_tictactoe/model/tile.dart';

final _gameState = StateNotifierProvider<GameStateNotifier, GameState>(
  (ref) => GameStateNotifier(GameState({}, Progress.inProgress())),
);

class Tiles extends HookConsumerWidget {
  const Tiles({Key? key}) : super(key: key);

  void triggerDialog(BuildContext context, FinishedState finishState) {
    Future.delayed(
      const Duration(milliseconds: 900),
      () => showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (_) => FinishDialog(finishState),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(_gameState);
    useValueChanged<Progress, Function(Progress, Progress)>(gameState.progress,
        (progress, __) {
      gameState.progress.when(
        finished: (winner) => {triggerDialog(context, winner)},
        inProgress: () => {},
      );
    });

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(12),
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: gameState.tiles.entries
            .map<Widget>((entry) => TileWidget(entry))
            .toList(),
      ),
    );
  }
}

class TileWidget extends HookConsumerWidget {
  const TileWidget(this.tileEntry, {Key? key}) : super(key: key);

  final MapEntry<Tile, PlayerType> tileEntry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const Duration duration = Duration(milliseconds: 700);
    final _controller = useAnimationController(
      duration: duration,
      upperBound: 100,
    );
    useValueChanged<PlayerType, Function(PlayerType, PlayerType)>(
        tileEntry.value, (_, __) {
      if (tileEntry.value == PlayerType.empty) {
        _controller.reset();
      }
      if (tileEntry.value != PlayerType.empty) {
        _controller.forward();
      }
    });

    switch (tileEntry.value) {
      case PlayerType.cross:
        return crossWidget(_controller);
      case PlayerType.circle:
        return circleWidget(_controller);
      case PlayerType.empty:
        return emptyWidget(ref, tileEntry.key);
    }
  }

  Widget emptyWidget(WidgetRef ref, Tile tile) {
    return GestureDetector(
      onTap: () => ref.watch(_gameState.notifier).toggle(tile),
      child: Container(
        color: Colors.green[600],
      ),
    );
  }

  Widget crossWidget(AnimationController _controller) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Container(
        color: Colors.green[600],
        child: CustomPaint(
          painter: CrossPainter(_controller.value),
        ),
      ),
    );
  }

  Widget circleWidget(AnimationController _controller) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Container(
        color: Colors.green[600],
        child: CustomPaint(
          painter: CirclePainter(_controller.value),
        ),
      ),
    );
  }
}

class FinishDialog extends HookConsumerWidget {
  final FinishedState _winner;

  const FinishDialog(this._winner, {Key? key}) : super(key: key);

  String get subtitle {
    if (_winner == FinishedState.cross) {
      return "Cross won!";
    }
    if (_winner == FinishedState.circle) {
      return "Circle won!";
    }
    return "Nobody lost!";
  }

  String get title {
    if (_winner == FinishedState.draw) {
      return "We have no loser!";
    }
    return "We have a winner!";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(_gameState.notifier);
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(subtitle),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Play Again'),
          onPressed: () {
            provider.reset();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
