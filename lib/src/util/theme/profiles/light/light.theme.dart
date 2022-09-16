import 'package:flutter/material.dart';

import '../../theme.dart';

const lightPrimaryColor = Colors.amberAccent;
const lightIconColor = Colors.orange;

ThemeData get lightTheme {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    floatingActionButtonTheme: lightFloatingActionButtonTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    inputDecorationTheme: inputDecorationTheme,
    listTileTheme: lightListTileTheme,
    switchTheme: lightSwitchTheme,
    iconTheme: lightIconTheme,
    cardTheme: lightCardTheme,
    appBarTheme: appBarTheme,
  );
}

const lightFloatingActionButtonTheme =
    FloatingActionButtonThemeData(backgroundColor: lightIconColor);

const appBarTheme = AppBarTheme(
  iconTheme: lightIconTheme,
  color: lightPrimaryColor,
  shape: appBarShape,
  elevation: 0.0,
);

const lightCardTheme = CardTheme(
  shape: roundedRectangleBorder20,
  margin: edgeInsetsH10V5,
  elevation: 4.0,
);

final lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: lightPrimaryColor,
    shape: roundedRectangleBorder20,
  ),
);

const lightListTileTheme = ListTileThemeData(shape: roundedRectangleBorder20);

const lightIconTheme = IconThemeData(color: lightIconColor);

const lightSwitchTheme = SwitchThemeData();
