import 'package:flutter/material.dart';
import 'package:twitter/pages/ui.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ReaderPage(),
    );
  }
}