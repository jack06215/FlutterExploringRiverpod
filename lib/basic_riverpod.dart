import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((ref) => "Exploring Riverpod");
final stringProvider = Provider<String>((ref) => "Jack Cho");
final intProvider = Provider<int>((ref) => 20);
final doubleProvider = Provider<double>((ref) => 3.1415926);
final listProvider = Provider<List<String>>((ref) {
  return [
    "Flutter",
    "Dart",
    "Firebase",
    "JavaScript",
    "Nodejs",
    "Python",
    "PostgreSQL"
  ];
});
