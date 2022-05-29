import 'dart:core';
import 'package:flutter_riverpod_practices/models/waifu.dart';

class DummyWaifuList {
  final _dummyWaifus = [
    Waifu.fromKonachan(
        author: "BattlequeenYume",
        file:
            "https://konachan.com/image/1617e40bb2c7bee5c2b3a51f95c10ad5/Konachan.com%20-%20328830%20clouds%20hikari_%28xenoblade%29%20landscape%20night%20roi_%28liu_tian%29%20scenic%20sky%20stars%20xenoblade.jpg",
        sample:
            "https://konachan.com/data/preview/16/17/1617e40bb2c7bee5c2b3a51f95c10ad5.jpg",
        previewImg:
            "https://konachan.com/sample/1617e40bb2c7bee5c2b3a51f95c10ad5/Konachan.com%20-%20328830%20sample.jpg",
        source: "https://www.pixiv.net/en/artworks/91065294"),
  ];

  List<Waifu> getWaifu() {
    return _dummyWaifus;
  }
}
