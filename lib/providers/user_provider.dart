// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/models/user.dart';
import 'package:flutter_riverpod_practices/services/user_service.dart';

enum Role { none, normal, admin }
enum Sort { normal, reversed }

final filterProvider = StateProvider.autoDispose<Role>((_) => Role.none);
final sortProvider = StateProvider.autoDispose<Sort>((_) => Sort.normal);
final usersProvider =
    StateNotifierProvider.autoDispose<UserNotifier, AsyncValue<List<User>>>(
        (ref) {
  return UserNotifier(ref);
});

class UserNotifier extends StateNotifier<AsyncValue<List<User>>> {
  UserNotifier(this._ref) : super(const AsyncValue.data([])) {
    _service = _ref.watch(userService);
    getUsers();
  }
  final AutoDisposeStateNotifierProviderRef _ref;
  late final UserService _service;

  Future<void> getUsers() async {
    state = const AsyncValue.loading();
    final res = await AsyncValue.guard(() async => await _service.getUsers());
    state = AsyncValue.data(res.asData!.value);
  }
}

final filteredAndSortedUsersProvider =
    Provider.autoDispose.family<List<User>, List<User>>((ref, users) {
  final filter = ref.watch(filterProvider);
  final sort = ref.watch(sortProvider);

  late final List<User> filteredList;

  switch (filter) {
    case Role.admin:
      filteredList =
          users.where((element) => element.role == Role.admin).toList();
      break;
    case Role.normal:
      filteredList =
          users.where((element) => element.role == Role.normal).toList();
      break;
    default:
      filteredList = users;
  }

  switch (sort) {
    case Sort.normal:
      return filteredList;
    case Sort.reversed:
      return filteredList.reversed.toList();
    default:
      return filteredList;
  }
});
