import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod_practices/models/photo.dart';

List<Photo> parsePhotos(List<dynamic> resBody) {
  final photos = resBody
      .map(
        (e) => Photo.fromJson(e),
      )
      .toList();
  return photos;
}

Future<List<Photo>> fetchPhotos() async {
  final res = await Dio().getUri(
    Uri.parse('https://jsonplaceholder.typicode.com/photos'),
  );
  if (res.statusCode == 200) {
    return compute(parsePhotos, res.data as List<dynamic>);
  } else {
    throw Exception("Cannot get photos");
  }
}
