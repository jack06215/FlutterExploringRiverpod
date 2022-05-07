// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/model/my_switch.dart';
import 'package:flutter_riverpod_practices/switch_riverpod.dart';

final singleSwitchProvider =
    StateNotifierProvider<SingleSwitchWidgetNotifier, bool>(
        (ref) => SingleSwitchWidgetNotifier());

final multipleSwitchProvider =
    StateNotifierProvider<MultipleSwitchWidgetNotifier, List<MySwitch>>(
        (ref) => MultipleSwitchWidgetNotifier([
              MySwitch(id: 1, value: false),
              MySwitch(id: 2, value: true),
              MySwitch(id: 3, value: false),
            ]));

class SwitchHomePage extends HookConsumerWidget {
  const SwitchHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;
    final multipleSwitch = ref.watch(multipleSwitchProvider);

    final singleSwitchName = ref.watch(singleSwitchNameProvider);
    final multipleSwitchName = ref.watch(multipleSwitchNameProvider);
    final footerMessage = ref.watch(footerMessageProvider);
    final appName = ref.watch(appNameProvider);
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context, appName),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: mq.height * 0.01, horizontal: mq.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: mq.width * 0.036,
                          top: mq.height * 0.01,
                        ),
                        child: Text(
                          singleSwitchName,
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.headline5!.fontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      singleSwitchListTile(ref, context),
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: mq.width * 0.036,
                          top: mq.height * 0.01,
                        ),
                        child: Text(
                          multipleSwitchName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                Theme.of(context).textTheme.headline5!.fontSize,
                          ),
                        ),
                      ),
                      for (var i = 0; i < multipleSwitch.length; i++)
                        SwitchListTile(
                            title: Text(
                              'Switche $i',
                            ),
                            activeColor: Colors.redAccent,
                            value: multipleSwitch[i].value,
                            onChanged: (newValue) {
                              ref
                                  .watch(multipleSwitchProvider.notifier)
                                  .toggle(multipleSwitch[i].id);
                            })
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                Text(
                  footerMessage,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget singleSwitchListTile(WidgetRef ref, BuildContext context) {
    return SwitchListTile(
        title: const Text(
          'Single Switch',
        ),
        activeColor: Colors.redAccent,
        value: ref.watch(singleSwitchProvider),
        onChanged: (newValue) {
          ref.watch(singleSwitchProvider.notifier).toggle(newValue);
        });
  }

  PreferredSizeWidget appBar(BuildContext context, String appname) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        appname,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
