import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../db/db.dart';
import '../../model/recipe/recipe.dart';
import '../home/home.dart';

class AddNewRecipe extends ConsumerWidget {
  const AddNewRecipe({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new recipe'),
      ),
      body: const Center(
        child: Text('Add new recipe'),
      ),
      floatingActionButton: FloatingActionButton.small(
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
          await db.writeTxn(() => db.recipes.put(recipe)).then(
                (value) => Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
              );
        },
        child: const Icon(Icons.done),
      ),
    );
  }
}
