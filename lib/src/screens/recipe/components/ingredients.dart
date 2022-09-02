import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';

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
    return ListTile(
      leading: const Icon(Icons.food_bank),
      title: const Text('Title'),
      trailing: Text('4 pcs', style: theme.textTheme.labelMedium),
    );
  }
}
