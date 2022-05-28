// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meme _$$_MemeFromJson(Map<String, dynamic> json) => _$_Meme(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      caption: json['caption'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_MemeToJson(_$_Meme instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'caption': instance.caption,
      'category': instance.category,
    };
