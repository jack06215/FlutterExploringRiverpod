import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/pages/basic_counter1_page.dart';
import 'package:flutter_riverpod_practices/pages/basic_counter2_page.dart';
import 'package:flutter_riverpod_practices/pages/basic_riverpod_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Riverpod_Practices',
      theme: ThemeData(
        canvasColor: Colors.indigo.withBlue(2),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lightBlue.withBlue(3)),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const BasicCounterPage2(),
    );
  }
}
