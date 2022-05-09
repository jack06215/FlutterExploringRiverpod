import 'package:flutter_riverpod_practices/pages/setting_page.dart';
import 'package:flutter_riverpod_practices/riverpod_apply.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class TextSizeChangerScreen extends ConsumerWidget {
  String text = lorem(paragraphs: 2, words: 40);

  TextSizeChangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    var watchcallChangeAllFont = ref.watch(changeFontProvider);

    final appname = ref.read(appNameProvider);
    final hopeRiverpodText = ref.read(footerMessageProvider);
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(appname, context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: ListView(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: watchcallChangeAllFont,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: size.height * 0.3,
              ),
              Text(
                hopeRiverpodText,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget buildAppBar(
    String appName,
    BuildContext context,
  ) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(appName),
      actions: [
        IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingPage()));
            }),
      ],
    );
  }
}
