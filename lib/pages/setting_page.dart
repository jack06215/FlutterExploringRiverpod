import 'package:flutter_riverpod_practices/riverpod_apply.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final changeFontProvider = StateNotifierProvider<ChangeFontNotifier, double>(
    (ref) => ChangeFontNotifier());

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, child) {
        final fontSize = ref.watch(changeFontProvider);
        final appSettingName = ref.read(appSettingProvider);

        return Scaffold(
          appBar: _appBar(appSettingName, context),
          body: Column(
            children: [
              Text(
                'Text Size is $fontSize',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Slider(
                  min: 15,
                  max: 100,
                  value: fontSize,
                  onChanged: (newValue) => ref
                      .watch(changeFontProvider.notifier)
                      .increaseSize(newValue)),
            ],
          ),
        );
      },
    );
  }

  PreferredSizeWidget _appBar(String title, BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: Theme.of(context).textTheme.headline4!.fontSize,
          ),
          onPressed: () => {Navigator.pop(context)}),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
