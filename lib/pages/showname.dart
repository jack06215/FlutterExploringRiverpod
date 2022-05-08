import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod_practices/showname_riverpod.dart';
import 'package:get/get.dart';

final textFieldProvider = StateNotifierProvider<TextFormStateNotifier, String>(
    (ref) => TextFormStateNotifier());

class ShowNamePage extends HookConsumerWidget {
  final _name = TextEditingController();

  ShowNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = Get.size;
    final textFieldInput = ref.watch(textFieldProvider);
    final widgetName = ref.watch(widgetNameProvider);
    final footerMessage = ref.watch(footerMessageProvider);
    final appName = ref.watch(appNameProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Column(
            children: [
              TextField(
                controller: _name,
                style: const TextStyle(
                  color: Colors.white,
                ),
                onSubmitted: (String newValue) {
                  ref.watch(textFieldProvider.notifier).onChangeValue(newValue);
                },
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.grey.withOpacity(0.3),
                    filled: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
