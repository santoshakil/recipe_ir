import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show runApp;
import 'package:isar/isar.dart';

import 'src/app.dart' show AppRoot;
import 'src/db/db.dart';
import 'src/model/recipe/recipe.dart';

void main() async {
  db = await Isar.open([RecipeSchema], inspector: !kReleaseMode);
  runApp(const AppRoot());
}
