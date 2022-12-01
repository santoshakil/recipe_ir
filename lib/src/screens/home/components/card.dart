import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';
import 'recipe.info.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard(this.i, {Key? key}) : super(key: key);
  final int i;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '$i',
      child: Card(
        child: SizedBox(
          height: 150.0,
          child: Stack(
            children: [
              Container(
                height: 150.0,
                decoration: const BoxDecoration(
                  borderRadius: borderRadius20,
                  image: DecorationImage(
                    image: AssetImage('assets/demo/food.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: borderRadius20,
                  color: Colors.black38,
                ),
                child: const RecipeInfoTextStack(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
