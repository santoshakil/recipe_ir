import 'package:flutter/material.dart';

import 'components/button.dart';
import 'components/image.dart';
import 'components/info.dart';
import 'components/ingredients.dart';
import 'components/ingredients.header.dart';
import 'components/name.dart';

class RecipeView extends StatelessWidget {
  const RecipeView(this.name, {super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_rounded),
            splashRadius: 22.0,
            onPressed: () {},
          ),
          const SizedBox(width: 10.0),
        ],
      ),
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (_, __) => [
          RecipeImage(name),
          const RecipeNameHeader(),
          const RecipeInfo(),
          const IngredientsHeader(),
        ],
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [RecipeIngredients()],
        ),
      ),
      floatingActionButton: const RecipeButton(),
    );
  }
}
