import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sleepo ZZZ',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}