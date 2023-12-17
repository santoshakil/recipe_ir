import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:recipe_ir/src/model/recipe/recipe.dart';

import '../../../db/db.dart';
import '../../../util/route/route.dart';
import '../../recipe/recipe.dart';
import 'card.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
        future: db.recipes.where().findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          }
          return SliverAnimatedList(
            initialItemCount: snapshot.data?.length ?? 0,
            itemBuilder: (_, i, a) => GestureDetector(
              onTap: () async => await fadeRoute(context, RecipeView('$i')),
              child: RecipeCard(i, name: snapshot.data?[i].name),
            ),
          );
        });
  }
}
