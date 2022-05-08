// Package imports:
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/models/user.dart';

final userService = Provider<UserService>((ref) => UserService());

class UserService {
  final _dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api/'));

  Future<List<User>> getUsers() async {
    final res = await _dio.get('users');
    final List list = res.data['data'];
    list[0]['role'] = 'normal';
    list[1]['role'] = 'normal';
    list[2]['role'] = 'normal';
    list[3]['role'] = 'admin';
    list[4]['role'] = 'admin';
    list[5]['role'] = 'normal';
    return list.map((e) => User.fromJson(e)).toList();
  }
}
