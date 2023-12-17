import 'package:flutter/material.dart';

import '../../../localization/localization.dart';

class RecipeSearchBar extends StatelessWidget {
  const RecipeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
      sliver: SliverToBoxAdapter(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: t.searchRecipe,
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
