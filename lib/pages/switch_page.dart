// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/switch_riverpod.dart';

final switchRiverpod = StateNotifierProvider<SwitchWidgetNotifier, bool>(
    (ref) => SwitchWidgetNotifier());

final multipleSwitchRiverpod = ChangeNotifierProvider<MultipleSwitchWidget>(
  (ref) => MultipleSwitchWidget(),
);

class SwitchHomePage extends HookConsumerWidget {
  const SwitchHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;
    var switchImplement = ref.watch(switchRiverpod);
    final multipleswitchImplement = ref.watch(multipleSwitchRiverpod);

    final singleswitch = ref.watch(singleswitchName);
    final multipleswitch = ref.watch(multipleswitchName);
    final hopeRiverpodText = ref.watch(hopeRiverpod);
    final appname = ref.watch(appNameRiverpod);
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context, appname),
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
                        value: multipleswitchImplement.value1,
                        onChanged: (vax) {
                          multipleswitchImplement.onChangedMultipleOne(vax);
                        },
                      ),
                      multipleSwitchListTile(
                        context,
                        textSwitch: 'Second Switch',
                        value: multipleswitchImplement.value2,
                        onChanged: (vax) {
                          multipleswitchImplement.onChangedMultipleTwo(vax);
                        },
                      ),
                      multipleSwitchListTile(
                        context,
                        textSwitch: 'Third Switch',
                        value: multipleswitchImplement.value3,
                        onChanged: (vax) {
                          multipleswitchImplement.onChangedMultipleThree(vax);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                Text(
                  hopeRiverpodText,
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
    final value = ref.watch(switchRiverpod);
    final switchImpl = ref.watch(switchRiverpod.notifier);
    return SwitchListTile(
        title: const Text(
          'Single Switch',
        ),
        activeColor: Colors.redAccent,
        value: value,
        onChanged: (newValue) {
          switchImpl.onChanged(newValue);
        });
  }

  Widget multipleSwitchListTile(BuildContext context,
      {required bool value,
      required Function(bool) onChanged,
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
