import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';
import 'package:flutter_riverpod_practices/controllers/constant/strings.dart';
import 'package:flutter_riverpod_practices/widgets/my_materials.dart';

class NoNetworkPage extends StatelessWidget {
  const NoNetworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //variable
    final widthTotal = MediaQuery.of(context).size.width;
    final heightTotal = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: blueMain,
          child: Center(
            child: SizedBox(
                width: widthTotal * 0.9,
                height: heightTotal * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.network_check_outlined,
                      size: widthTotal * 0.5,
                      color: white,
                    ),
                    MyText(
                      maxLines: 6,
                      data: strNoNetwork,
                      fontSize: 25.0,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
