import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../../../db/db.dart';
import '../../../model/recipe/recipe.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: 'default.floating.hero',
      child: const Icon(Icons.add_rounded),
      // onPressed: () async => await fadeRoute(context, const RecipeView('')),
      onPressed: () async {
        final recipe = Recipe(
          id: DateTime.now().millisecondsSinceEpoch,
          name: 'Name ${DateTime.now().millisecondsSinceEpoch}',
          addedAt: DateTime.now(),
          description: 'Description 1',
          imageUrl: 'https://picsum.photos/200',
          ingredients: ['Ingredient 1', 'Ingredient 2'],
          duration: const Duration(minutes: 30).inSeconds,
        );
        await db.writeTxn(() => db.recipes.put(recipe));

        final recipe2 = await db.recipes
            .filter()
            .nameContains('Name', caseSensitive: false)
            .descriptionContains('Des')
            .findAll();

        debugPrint('$recipe2');
      },
    );
  }
}
