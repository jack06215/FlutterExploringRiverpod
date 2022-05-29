import 'package:freezed_annotation/freezed_annotation.dart';

part 'waifu.freezed.dart';
part 'waifu.g.dart';

@freezed
class Waifu with _$Waifu {
  factory Waifu.fromKonachan(
      {required String author,
      required String file,
      required String sample,
      required String previewImg,
      required String source}) = _FromKonachan;

  factory Waifu.fromYandere(
      {required String author,
      required String file,
      required String sample,
      required String previewImg,
      required String source}) = _FromYandere;

  factory Waifu.fromGelbooru(
      {required String file,
      required String sample,
      required String previewImg,
      required String source}) = _FromGelbooru;

  factory Waifu.fromJson(Map<String, dynamic> json) => _$WaifuFromJson(json);
}
