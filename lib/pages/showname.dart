// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_riverpod_practices/showname_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(controllerProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(controllerProvider.notifier).add("example");
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final str = items[index];
          
          return FutureBuilder(
            future: ref.watch(futureProvider(str.toString()).future),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ListTile(
                  title: Text("${snapshot.error}"),
                );
              }
              if (!snapshot.hasData) {
                return const ListTile(
                  title: Center(child: CircularProgressIndicator()),
                );
              }
              return ListTile(
                title: Text("${snapshot.data}"),
              );
            },
          );
        },
      ),
    );
  }
}
