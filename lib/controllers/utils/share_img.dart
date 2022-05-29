import 'dart:io';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod_practices/controllers/constant/strings.dart';
import 'package:flutter_riverpod_practices/controllers/utils/convert_url_to_file.dart';
import 'package:flutter_riverpod_practices/models/waifu.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

void shareImg(Waifu waifu) {
  File imgFile;
  waifu
      .map(
    fromGelbooru: ((value) => fileFromImageUrl(value.file, "unknown")),
    fromKonachan: ((value) => fileFromImageUrl(value.file, value.author)),
    fromYandere: ((value) => fileFromImageUrl(value.file, value.author)),
  )
      .then((file) {
    imgFile = file;
    Share.shareFiles([imgFile.path], text: strBodySharing).then((value) {
      // launch share and hide loading indicator
      EasyLoading.dismiss();
    });
  });
}

void shareText() {
  Share.share(strShareAppText);
}

void openImgLink(Waifu waifu) async {
  final linkImg = Uri.parse(waifu.file);
  if (await canLaunchUrl(linkImg)) {
    await launchUrl(
      linkImg,
      webViewConfiguration: const WebViewConfiguration(
        headers: <String, String>{'my_header_key': 'my_header_value'},
      ),
    );
  } else {
    throw 'Could not launch $linkImg';
  }
}
