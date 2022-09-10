import 'package:flutter/material.dart';

import '../../../util/route/route.dart';
import '../../recipe/recipe.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: 'default.floating.hero',
      child: const Icon(Icons.add_rounded),
      onPressed: () async => await fadeRoute(context, const RecipeView()),
    );
  }
}
