import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/utils/connectivity_provider.dart';
import 'package:flutter_riverpod_practices/views/home_page.dart';
import 'package:flutter_riverpod_practices/widgets/no_network_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _provider = ChangeNotifierProvider((ref) => ConnectivityProvider());

class BeforeHomePage extends StatefulWidget {
  const BeforeHomePage({Key? key}) : super(key: key);

  @override
  _BeforeHomePageState createState() => _BeforeHomePageState();
}

class _BeforeHomePageState extends State<BeforeHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final changeState = ref.watch(_provider);
      return changeState.isOnline ? MyHomePage() : const NoNetworkPage();
    });
    // return Consumer<ConnectivityProvider>(builder: (context, model, child) {
    //   return model.isOnline ? MyHomePage() : const NoNetworkPage();
    // });
  }
}
