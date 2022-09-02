import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Card(
        child: SizedBox(
          height: 200.0,
        ),
      ),
    );
  }
}
