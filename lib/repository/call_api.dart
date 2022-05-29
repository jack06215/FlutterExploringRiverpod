import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod_practices/models/waifu.dart';
import 'package:flutter_riverpod_practices/repository/dummy_waifu_list.dart';

class CallWaifus {
  static const String _urlYandere = "https://yande.re/post.json";
  static const String _urlKonachan = "https://hello.maxvyr.workers.dev/";

  Future<List<dynamic>> _requestGetFromList(String url) async {
    try {
      final res = await Dio().getUri(Uri.parse(url));
      if (res.statusCode == 200) {
        debugPrint("${res.statusCode} from List");
        final List<dynamic> body = jsonDecode(res.data) as List<dynamic>;
        return body;
      } else if (res.statusCode == 404) {
        debugPrint("${res.statusCode}");
        return DummyWaifuList().getWaifus();
      } else {
        debugPrint("euh => ${res.statusCode}");
        return [res.statusCode];
      }
    } catch (err) {
      debugPrint("error => $err");
      return ["ERROR"];
    }
  }

  Future<List<Waifu>> getYandere() async {
    final listYandere = await _requestGetFromList(_urlYandere);
    final List<Waifu> yandereList = [];
    for (var element in listYandere) {
      final waifu = Waifu.fromKonachan(
          author: element.author,
          file: element.file_url,
          sample: element.sample_url,
          previewImg: element.preview_url,
          source: element.source);
      yandereList.add(waifu);
    }
    return yandereList;
  }

  Future<List<Waifu>> getKonachan() async {
    final listKonachan = await _requestGetFromList(_urlKonachan);
    final List<Waifu> konachanList = [];
    for (var element in listKonachan) {
      final waifu = Waifu.fromKonachan(
          author: element.author,
          file: element.file,
          sample: element.sample,
          previewImg: element.previewImg,
          source: element.source);
      konachanList.add(waifu);
    }
    return konachanList;
  }

  Future<List<Waifu>> getWaifus() async {
    final List<Waifu> waifusYandere;
    // final List<Waifu> waifusKonachan;
    waifusYandere = await getYandere();
    // waifusKonachan = await getKonachan();

    return waifusYandere;
  }
}
