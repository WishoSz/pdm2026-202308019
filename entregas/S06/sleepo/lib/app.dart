import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'home.dart';
import 'features/home/presentation/controllers/home_controller.dart';

class MyApp extends StatelessWidget {
  final MovimientosController controller;

  const MyApp({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sleepo ZZZ',
      theme: AppTheme.darkTheme,
      home: HomeScreen(controller: controller),
    );
  }
}