import 'package:flutter/material.dart';

import '../../../util/route/route.dart';
import '../../recipe/recipe.dart';
import 'card.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      initialItemCount: 10,
      itemBuilder: (_, i, a) => GestureDetector(
        onTap: () async => await fadeRoute(context, RecipeView('$i')),
        child: RecipeCard(i),
      ),
    );
  }
}
