import 'package:flutter/material.dart';

class RecipeButton extends StatelessWidget {
  const RecipeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      child: const Icon(Icons.favorite_outline_rounded),
      onPressed: () {},
    );
  }
}
