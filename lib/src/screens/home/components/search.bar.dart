import 'package:flutter/material.dart';

import '../../../localization/localization.dart';

class RecipeSearchBar extends StatelessWidget {
  const RecipeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.all(10),
      sliver: SliverToBoxAdapter(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: ColoredBox(
            color: theme.cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.search),
                  const SizedBox(width: 10),
                  Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      hintText: t.searchRecipe,
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
