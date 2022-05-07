// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/switch_riverpod.dart';

final singleswitchRiverpod = StateNotifierProvider<SingleSwitchNotifier, bool>(
    (ref) => SingleSwitchNotifier());

final multipleswitchRiverpod =
    StateNotifierProvider<MultipleSwitchNotifier, List<bool>>(
        (ref) => MultipleSwitchNotifier());

class SwitchHomePage extends HookConsumerWidget {
  const SwitchHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;
    final switchImplement = ref.watch(singleswitchRiverpod.notifier);
    final multipleswitchImpement = ref.watch(multipleswitchRiverpod.notifier);

    final singleswitch = ref.watch(singleSiwtchNameProvider);
    final multipleswitch = ref.watch(multipleSwitchNameProvider);
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
                          singleswitch,
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.headline5!.fontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      singleSwitchListTile(switchImplement, context),
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
                          multipleswitch,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                Theme.of(context).textTheme.headline5!.fontSize,
                          ),
                        ),
                      ),
                      multipleSwitchListTile(
                        context,
                        textSwitch: 'First Switch',
                        value: multipleswitchImpement.value1,
                        onChanged: (vax) {
                          multipleswitchImpement.onChangeMultipleOne(vax);
                        },
                      ),
                      multipleSwitchListTile(
                        context,
                        textSwitch: 'Second Switch',
                        value: multipleswitchImpement.value2,
                        onChanged: (vax) {
                          multipleswitchImpement.onChangeMultipleTwo(vax);
                        },
                      ),
                      multipleSwitchListTile(
                        context,
                        textSwitch: 'Third Switch',
                        value: multipleswitchImpement.value3,
                        onChanged: (vax) {
                          multipleswitchImpement.onChangeMultipleThree(vax);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget singleSwitchListTile(
      SingleSwitchNotifier switchImplement, BuildContext context) {
    return SwitchListTile(
        title: const Text(
          'Single Switch',
        ),
        activeColor: Colors.redAccent,
        value: switchImplement.value,
        onChanged: (change) {
          switchImplement.onChange(change);
        });
  }

  Widget multipleSwitchListTile(BuildContext context,
      {required bool value,
      required void Function(bool) onChanged,
      required String textSwitch}) {
    return SwitchListTile(
      title: Text(
        textSwitch,
      ),
      activeColor: Colors.redAccent,
      value: value,
      onChanged: onChanged,
    );
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
