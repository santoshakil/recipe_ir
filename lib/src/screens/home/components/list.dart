import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      initialItemCount: 10,
      itemBuilder: (_, i, a) => const Card(
        child: SizedBox(
          height: 100.0,
        ),
      ),
    );
  }
}
