import 'package:flutter/material.dart';

import 'components/button.dart';
import 'components/image.dart';
import 'components/info.dart';
import 'components/ingredients.dart';
import 'components/ingredients.header.dart';
import 'components/name.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (_, __) => [
          const RecipeImage(),
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
