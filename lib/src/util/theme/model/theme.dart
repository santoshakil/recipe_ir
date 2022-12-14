import 'package:flutter/material.dart' show ThemeData;

import '../profiles/dark/dark.theme.dart' show darkTheme;
import '../profiles/light/light.theme.dart' show lightTheme;

final themes = {Themes.light: lightTheme, Themes.dark: darkTheme};

enum Themes {
  light('Light'),
  dark('Dark');

  const Themes(this.title);
  final String title;

  ThemeData get data => themes[this]!;
}
