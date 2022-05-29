import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //variable
    final widthTotal = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: blueMain,
          child: Center(
            child: Container(
              width: widthTotal * 0.3,
              height: widthTotal * 0.3,
              color: blueMain,
              child: const CircularProgressIndicator(
                color: white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingPageError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //variable
    final widthTotal = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: blueMain,
          child: Center(
            child: Container(
              width: widthTotal * 0.3,
              height: widthTotal * 0.3,
              color: blueMain,
              child: const CircularProgressIndicator(
                color: red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
