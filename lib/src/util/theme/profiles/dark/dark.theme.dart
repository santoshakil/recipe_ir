import 'package:flutter/material.dart';

import '../../theme.dart';

ThemeData get darkTheme {
  return ThemeData(
    brightness: Brightness.dark,
    inputDecorationTheme: inputDecorationTheme,
    cardTheme: lightCardTheme,
    appBarTheme: appBarTheme,
  );
}

const appBarTheme = AppBarTheme(elevation: 0.0, shape: appBarShape);

const lightCardTheme = CardTheme(
  shape: roundedRectangleBorder20,
  margin: edgeInsetsH10V5,
);
