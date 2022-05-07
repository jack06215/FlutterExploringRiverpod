// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/slider_riverpod.dart';

// https://github.com/devkishor8007/Exploring-Riverpod/blob/Day-4/lib/page/sliderPage.dart

final sliderRiverpod =
    StateNotifierProvider<SliderWidget, double>((ref) => SliderWidget());

class SliderHomePage extends HookConsumerWidget {
  const SliderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;
    final sliderImplement = ref.watch(sliderRiverpod);

    final whatWidgetImpl = ref.watch(whatWidgetProvider);
    final footerMessageImpl = ref.watch(footerMessageProvider);
    final appName = ref.watch(appNameProvider);

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: mq.height * 0.01,
            horizontal: mq.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                whatWidgetImpl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.headline6!.fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
