import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';
import 'package:flutter_riverpod_practices/controllers/constant/icons.dart';
import 'package:flutter_riverpod_practices/controllers/utils/navigation.dart';
import 'package:flutter_riverpod_practices/widgets/my_text.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    required String title,
    required BuildContext context,
    bool isDarkMode = false,
    Function()? onPressed,
  }) : super(
          title: MyText(
            data: title,
            color: isDarkMode ? blueMain : white,
          ),
          centerTitle: true,
          backgroundColor: isDarkMode ? white : blueMain,
          leading: IconButton(
            color: isDarkMode ? blueMain : white,
            icon: const Icon(
              arrowBackAndroidIcon,
              size: 30.0,
            ),
            onPressed: onPressed ?? () => popPage(context),
          ),
        );
}
