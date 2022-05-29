import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';

class MyText extends Text {
  MyText({
    Key? key,
    required String data,
    double fontSize = 16.0,
    Color color = white,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    Color colorShadow = transparent,
    double textScaleFactor = 1,
    double height = 1,
    TextAlign alignement = TextAlign.left,
    int maxLines = 1,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) : super(
          data,
          key: key,
          textAlign: alignement,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          overflow: overflow,
          style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontStyle: fontStyle,
            height: height,
            fontFamily: "AnimeAce",
            shadows: [
              Shadow(
                color: colorShadow,
                offset: const Offset(1, 1),
                blurRadius: 4.0,
              ),
            ],
          ),
        );
}

class MyCupertinoText extends DefaultTextStyle {
  MyCupertinoText({
    Key? key,
    required String data,
    Color color = black,
  }) : super(
          key: key,
          style: TextStyle(
            color: color,
          ),
          child: Text(
            data,
          ),
        );
}
