import 'package:flutter/material.dart';

import 'ui/features/home/view/home_screen.dart';
import 'utils/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nitin Gamechi',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
