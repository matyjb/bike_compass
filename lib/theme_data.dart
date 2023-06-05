import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.greenAccent,
  ),
  useMaterial3: true,
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.greenAccent,
    brightness: Brightness.dark
  ),
  useMaterial3: true,
);
