import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/views/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// https://github.com/Maxvyr/adopt_ta_waifu_android_flutter/blob/main/lib/repository/call_api.dart
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
