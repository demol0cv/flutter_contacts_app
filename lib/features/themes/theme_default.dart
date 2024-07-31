import 'package:flutter/material.dart';
import 'package:my_todo_app/features/themes/colors.dart';

ThemeData myAppTheme = ThemeData(
  scaffoldBackgroundColor: ColorsPalitre.bodyColor,
  primarySwatch: Colors.grey,
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorsPalitre.titleBGColor,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ColorsPalitre.bodyButtonColor,
    hoverColor: ColorsPalitre.biscotty,
    foregroundColor: ColorsPalitre.bodyButtonForegroundColor,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: ColorsPalitre.bodyFontColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  useMaterial3: true,
);
