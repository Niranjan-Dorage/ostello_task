import 'package:flutter/material.dart';
import 'package:ostello_task/screens/categories.dart';
import 'package:ostello_task/screens/syllabus/syllabus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Syllabus(),
        '/categories': (context) => const Categories()
      },
    );
  }
}
