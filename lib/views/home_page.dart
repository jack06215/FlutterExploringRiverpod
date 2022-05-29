import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practices/models/waifu.dart';

class HomePageView extends ConsumerWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final waifu = Waifu.fromGelbooru(
        file: "asdf", sample: "asdf", previewImg: "asdfas", source: "asdf");
    debugPrint('${waifu.toJson()}');
    return Scaffold(
        appBar: AppBar(
          title: const Text("Riverpod Get Data from API"),
          centerTitle: true,
        ),
        body: const Text("ASdf"));
  }
}
