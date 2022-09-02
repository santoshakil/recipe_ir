import 'package:flutter/material.dart';

late ThemeData theme;

const radius30 = Radius.circular(30);
const radius20 = Radius.circular(20);
const radius15 = Radius.circular(15);
const borderRadius30 = BorderRadius.all(radius30);
const borderRadius20 = BorderRadius.all(radius20);
const borderRadius15 = BorderRadius.all(radius15);
const roundedRectangleBorder30 =
    RoundedRectangleBorder(borderRadius: borderRadius30);
const roundedRectangleBorder20 =
    RoundedRectangleBorder(borderRadius: borderRadius20);
const roundedRectangleBorder15 =
    RoundedRectangleBorder(borderRadius: borderRadius15);

const appBarRadius =
    BorderRadius.only(bottomLeft: radius20, bottomRight: radius20);
const appBarShape = RoundedRectangleBorder(borderRadius: appBarRadius);

const edgeInsetsH10V5 = EdgeInsets.symmetric(horizontal: 10, vertical: 5);

const outlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 0, style: BorderStyle.none),
  borderRadius: borderRadius30,
);

const inputDecorationTheme = InputDecorationTheme(
  border: outlineInputBorder,
  filled: true,
);
