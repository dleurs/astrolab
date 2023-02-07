import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme(isDark: false).themeData,
      darkTheme: CustomTheme(isDark: true).themeData,
      home: const HomePage(),
    );
  }
}
