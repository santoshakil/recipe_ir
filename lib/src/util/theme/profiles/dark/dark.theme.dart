import 'package:flutter/material.dart';

import '../../theme.dart';

const darkButtonColor = Color.fromARGB(255, 0, 129, 129);

ThemeData get darkTheme {
  return ThemeData(
    brightness: Brightness.dark,
    elevatedButtonTheme: darkElevatedButtonTheme,
    inputDecorationTheme: inputDecorationTheme,
    cardTheme: darkCardTheme,
    appBarTheme: appBarTheme,
  );
}

const appBarTheme = AppBarTheme(elevation: 0.0, shape: appBarShape);

const darkCardTheme =
    CardTheme(shape: roundedRectangleBorder20, margin: edgeInsetsH10V5);

final darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: darkButtonColor,
    shape: roundedRectangleBorder20,
  ),
);
