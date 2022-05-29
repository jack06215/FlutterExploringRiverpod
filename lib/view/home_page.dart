import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageView extends ConsumerWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Riverpod Get Data from API"),
          centerTitle: true,
        ),
        body: const Text("ASdf"));
  }
}
