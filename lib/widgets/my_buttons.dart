import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';
import 'package:flutter_riverpod_practices/controllers/constant/icons.dart';
import 'package:flutter_riverpod_practices/controllers/constant/images.dart';
import 'package:flutter_riverpod_practices/controllers/constant/strings.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_materials.dart';

void openGooglePlay() async {
  final Uri url = Uri.parse("");
  await canLaunchUrl(url)
      ? await launchUrl(url)
      : debugPrint("Impossible d'ouvrir l'url");
}

void openAppStore() async {
  final Uri url = Uri.parse("");
  await canLaunchUrl(url)
      ? await launchUrl(url)
      : debugPrint("Impossible d'ouvrir l'url");
}

class ButtonSocialNetwork extends Padding {
  ButtonSocialNetwork({
    Key? key,
    required bool isAndroid,
    required double width,
    double padding = 8.0,
  }) : super(
          key: key,
          padding: EdgeInsets.all(padding),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: accent2,
              onPrimary: blueMain,
              shadowColor: backgroundDark,
            ),
            onPressed: () => isAndroid ? openGooglePlay() : openAppStore(),
            child: SizedBox(
              width: width >= 1000 ? width * 0.2 : 180,
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    isAndroid ? googlePlayPNG : appStorePNG,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyText(
                        data: strDwldOn,
                      ),
                      MyText(
                        data: isAndroid ? strGooglePlay : strAppStore,
                        fontWeight: FontWeight.w700,
                        fontSize: width >= 1000 ? 33 : 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
}

class MyButtonElevated extends SizedBox {
  MyButtonElevated({
    required String txtBt,
    required VoidCallback callback,
    required Key key,
    double heightBt = 46,
    double widthBt = 150,
    Color txtColor = white,
    Color backgroundColor = blueMain,
    FontWeight fontWeight = FontWeight.w700,
    bool addIcon = false,
  }) : super(
          key: key,
          height: heightBt,
          width: widthBt,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: backgroundColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
            ),
            onPressed: callback,
            child: Row(
              mainAxisAlignment: addIcon
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.center,
              children: [
                MyText(
                  data: txtBt,
                  fontWeight: fontWeight,
                  color: txtColor,
                ),
                Visibility(
                  visible: addIcon,
                  child: const Icon(arrowNextIcon),
                ),
              ],
            ),
          ),
        );
}

class MyButtonFlat extends SizedBox {
  MyButtonFlat(
      {Key? key,
      required String txtBt,
      required VoidCallback callback,
      double heightBt = 46,
      double widthBt = 216,
      Color color = red,
      FontWeight fontWeight = FontWeight.w700,
      double fontSize = 18.0})
      : super(
          key: key,
          height: heightBt,
          width: widthBt,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
            ),
            onPressed: callback,
            child: MyText(
              data: txtBt,
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        );
}

class MyButtonFlatWithBorder extends SizedBox {
  MyButtonFlatWithBorder({
    Key? key,
    required String txtBt,
    required VoidCallback callback,
    double heightBt = 46,
    double widthBt = 216,
    Color color = white,
    FontWeight fontWeight = FontWeight.w700,
  }) : super(
          key: key,
          height: heightBt,
          width: widthBt,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: color,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
            ),
            onPressed: callback,
            child: MyText(
              data: txtBt,
              color: color,
              fontWeight: fontWeight,
            ),
          ),
        );
}

class MyCupertinoButton extends CupertinoButton {
  MyCupertinoButton({
    Key? key,
    required String text,
    required VoidCallback callback,
    Color colorButton = blueMain,
    Color colorText = white,
    double txtSize = 18.0,
    double minSize = 44.0,
    FontStyle fontStyle = FontStyle.normal,
  }) : super(
          key: key,
          color: colorButton,
          onPressed: callback,
          minSize: minSize,
          child: MyText(
            data: text,
            color: colorText,
            fontSize: txtSize,
            fontStyle: fontStyle,
          ),
        );

  MyCupertinoButton.icon({
    Key? key,
    required String text,
    required VoidCallback callback,
    required IconData iconData,
    Color colorButton = blueMain,
    Color colorText = white,
    double txtSize = 18.0,
    double minSize = 44.0,
    FontStyle fontStyle = FontStyle.normal,
  }) : super(
          key: key,
          color: colorButton,
          onPressed: callback,
          minSize: minSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData),
              spacingW(),
              MyText(
                data: text,
                color: colorText,
                fontSize: txtSize,
                fontStyle: fontStyle,
              ),
            ],
          ),
        );
}

Widget btAnswer({
  required String text,
  required VoidCallback callback,
  double txtSize = 20.0,
}) {
  return SizedBox(
    width: 190,
    child: MyCupertinoButton(
      text: text,
      callback: callback,
      minSize: 100.0,
      txtSize: txtSize,
    ),
  );
}
