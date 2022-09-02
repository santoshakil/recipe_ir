import 'package:flutter/material.dart';

import 'components/button.dart' show RecipeButton;
import 'components/image.dart' show RecipeImage;
import 'components/info.dart' show RecipeInfo;
import 'components/ingredients.dart' show RecipeIngredients;
import 'components/ingredients.header.dart' show IngredientsHeader;
import 'components/name.dart' show RecipeNameHeader;
import 'components/reciep_type.dart' show ReciepTypes;

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
          const ReciepTypes(),
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
