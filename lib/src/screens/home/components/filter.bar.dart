import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';
import '../../constant.dart';

class RecipeFilterBar extends StatelessWidget {
  const RecipeFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      sliver: SliverAnimatedList(
        initialItemCount: recipeTypes.length,
        itemBuilder: (_, i, a) => FilterCard(recipeTypes[i]),
      ),
    );
  }
}

class FilterCard extends StatelessWidget {
  const FilterCard(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: theme.primaryColor,
      ),
      child: Text(text, style: theme.textTheme.labelMedium),
    );
  }
}
