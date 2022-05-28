import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod_practices/models/photo.dart';
import 'package:flutter_riverpod_practices/repository/network_request.dart';

final photoStateProvider = FutureProvider.autoDispose<List<Photo>>((ref) async {
  return fetchPhotos();
});
