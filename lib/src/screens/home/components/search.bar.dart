import 'package:flutter/material.dart';

import '../../../localization/localization.dart';

class RecipeSearchBar extends StatelessWidget {
  const RecipeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
      sliver: SliverToBoxAdapter(
        child: TextField(
          decoration: InputDecoration(
            labelText: t.searchRecipe,
          ),
        ),
      ),
    );
  }
}
