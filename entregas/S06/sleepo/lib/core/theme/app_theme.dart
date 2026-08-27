import 'package:flutter/material.dart';

class AppTheme {
  // Evita que alguien intente instanciar esta clase
  AppTheme._();

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.blueGrey,
      // Aquí puedes ir agregando más cosas después:
      // colorScheme, textTheme, appBarTheme, etc.
    );
  }
}