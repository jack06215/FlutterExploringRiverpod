import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';

Widget myDividerLight() {
  return const Divider(
    color: colorHint,
  );
}

Widget myDividerDark() {
  return const Divider(
    height: 2,
    thickness: 2,
    color: backgroundDark,
  );
}

Widget myDividerRed() {
  return const Divider(
    color: red,
  );
}
