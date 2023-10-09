import 'package:flutter/material.dart';
import 'package:straightkey/straight_key.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StraightKey(), // Use StraightKey as the home widget
    );
  }
}
