import 'package:flutter/material.dart';
import 'package:responsive_booking/feature/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1C1C1E),
        colorScheme: const ColorScheme.dark(
          surface: Color(0xFF1C1C1E),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
