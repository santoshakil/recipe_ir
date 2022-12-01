import 'package:isar/isar.dart';

part 'recipe.g.dart';

@Collection()
class Recipe {
  Id? id;

  String name;
  int duration;
  String imageUrl;
  DateTime addedAt;
  String description;
  List<String> ingredients;

  Recipe({
    this.id,
    required this.name,
    required this.addedAt,
    required this.duration,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
  });

  @override
  String toString() =>
      'Recipe(id: $id, name: $name, duration: $duration, imageUrl: $imageUrl, addedAt: $addedAt, description: $description, ingredients: $ingredients)';
}
