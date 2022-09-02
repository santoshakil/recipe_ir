import 'package:flutter/material.dart';

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      sliver: SliverAnimatedList(
        initialItemCount: 10,
        itemBuilder: (_, i, a) => const IngredientTile(),
      ),
    );
  }
}

class IngredientTile extends StatelessWidget {
  const IngredientTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const ColoredBox(
            color: Colors.white10,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Icon(Icons.food_bank_outlined),
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Toast bread',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const Text('3 pc'),
      ]),
    );
  }
}
