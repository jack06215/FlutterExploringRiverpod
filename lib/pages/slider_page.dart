// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/slider_riverpod.dart';

final sliderProvider =
    StateNotifierProvider<SliderStateNotifier, double>((ref) => SliderStateNotifier());

class SliderHomePage extends HookConsumerWidget {
  const SliderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;
    final sliderState = ref.watch(sliderProvider);
    final whatWidgetState = ref.watch(whatWidgetProvider);
    final footerMsgState = ref.watch(footerMessageProvider);
    final appNameState = ref.watch(appNameProvider);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          appNameState,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
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
                whatWidgetState,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.headline6!.fontSize,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: mq.width * 0.043, top: mq.height * 0.03),
                  child: Text("The value is ${sliderState.toStringAsFixed(2)}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .fontSize))),
              Slider(
                  min: 0,
                  max: 10,
                  value: sliderState,
                  onChanged: (newValue) =>
                      ref.watch(sliderProvider.notifier).onChanged(newValue)),
              SizedBox(
                height: mq.height * 0.03,
              ),
              Text(
                footerMsgState,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodyText1!.fontSize),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
