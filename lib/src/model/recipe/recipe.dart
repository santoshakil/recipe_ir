import 'package:isar/isar.dart';

part 'recipe.g.dart';

@Collection()
class Recipe {
  Id id = Isar.autoIncrement;

  String name;
  int duration;
  String imageUrl;
  String description;
  List<String> ingredients;

  Recipe({
    required this.name,
    required this.duration,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
  });
}
