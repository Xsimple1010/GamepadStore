import 'package:gamepads/color_schemes.g.dart';
import 'package:gamepads/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controllers',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      home: const MyHomePage(),
    );
  }
}
