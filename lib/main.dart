import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final firstCounter = ValueNotifier(0);
final secondCounter = ValueNotifier(0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: firstCounter,
              builder: (context, value, child) {
                return TweenAnimationBuilder<int>(
                  duration: const Duration(seconds: 5),
                  curve: Curves.easeOut,
                  tween: IntTween(end: value),
                  builder: (context, value, child) {
                    return Text('$value');
                  },
                );
              },
            ),
            ElevatedButton(
              onPressed: () => firstCounter.value += 100,
              child: const Text('+'),
            ),
            // Both counters have voluntarily a different Curve and duration
            ValueListenableBuilder<int>(
              valueListenable: secondCounter,
              builder: (context, value, child) {
                return TweenAnimationBuilder<int>(
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInOut,
                  tween: IntTween(end: value),
                  builder: (context, value, child) {
                    return Text('$value');
                  },
                );
              },
            ),
            ElevatedButton(
              onPressed: () => secondCounter.value += 100,
              child: const Text('+'),
            ),
            const Text('total:'),
            // The total must take into account the animation of both counters
            ValueListenableBuilder<int>(
              valueListenable: firstCounter,
              builder: (context, value, child) {
                return TweenAnimationBuilder<int>(
                  duration: const Duration(seconds: 5),
                  curve: Curves.easeOut,
                  tween: IntTween(end: value),
                  builder: (context, value, child) {
                    return ValueListenableBuilder<int>(
                      valueListenable: secondCounter,
                      builder: (context, value2, child) {
                        return TweenAnimationBuilder<int>(
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeInOut,
                          tween: IntTween(end: value2),
                          builder: (context, value2, child) {
                            return Text('${value + value2}');
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
