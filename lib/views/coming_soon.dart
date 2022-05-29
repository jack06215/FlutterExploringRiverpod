import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';
import 'package:flutter_riverpod_practices/controllers/constant/strings.dart';
import 'package:flutter_riverpod_practices/widgets/my_app_bar.dart';
import 'package:flutter_riverpod_practices/widgets/my_text.dart';

class ComingSoon extends StatelessWidget {
  final String title;
  final Function({Never returnValue}) backAppBar;

  const ComingSoon(this.title, this.backAppBar, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: title,
        context: context,
        onPressed: backAppBar,
      ),
      body: Center(
        child: MyText(
          data: strComingSoon,
          color: black,
          fontSize: 35.0,
        ),
      ),
    );
  }
}
