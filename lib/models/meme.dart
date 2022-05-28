import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'meme.freezed.dart';
part 'meme.g.dart';

Meme memeFromJson(String str) => Meme.fromJson(json.decode(str));

String memeToJson(Meme data) => json.encode(data.toJson());

@freezed
class Meme with _$Meme {
  const factory Meme({
    required int id,
    required String imageUrl,
    required String caption,
    required String category,
  }) = _Meme;

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);
}
