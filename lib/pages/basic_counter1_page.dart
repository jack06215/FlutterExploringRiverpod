import 'package:flutter_riverpod_practices/basic_counter1.dart';
import 'package:flutter_riverpod_practices/basic_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appCounterProvider = ChangeNotifierProvider<Counter>((ref) {
  return Counter();
});

class BasicCounterPage extends HookConsumerWidget {
  const BasicCounterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;
    final applyCount = ref.watch(appCounterProvider);
    final appName = ref.watch(appNameProvider);
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(appName, context),
        floatingActionButton: rowfloatingActionButton(applyCount, mq),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Value: ${applyCount.value.toString()}",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            Text(
              "Riverpod Counter Example",
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar(String appName, BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        appName,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.white),
      ),
    );
  }

  Widget rowfloatingActionButton(Counter applyCount, Size mq) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            applyCount.add();
          },
          child: const Icon(Icons.add),
        ),
        SizedBox(
          width: mq.width * 0.02,
        ),
        FloatingActionButton(
          onPressed: () {
            applyCount.subtract();
          },
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}