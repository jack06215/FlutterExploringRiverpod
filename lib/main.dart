// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/pages/showname.dart';

// Package imports:
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
        canvasColor: Colors.teal.withOpacity(0.3),
      ),
      debugShowCheckedModeBanner: false,
      home: ShowNamePage(),
    );
  }
}
