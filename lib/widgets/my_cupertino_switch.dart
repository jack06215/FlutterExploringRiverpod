import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';

class MyCupertinoSwitch extends CupertinoSwitch {
  const MyCupertinoSwitch({
    Key? key,
    required bool value,
    required void Function(bool) callback,
  }) : super(
          key: key,
          value: value,
          onChanged: callback,
          activeColor: red,
          trackColor: colorHint,
        );
}
