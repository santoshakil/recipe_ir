import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';

class RecipeFilterBar extends StatelessWidget {
  const RecipeFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      sliver: SliverAnimatedList(
        initialItemCount: 10,
        itemBuilder: (_, i, a) => FilterCard('Type $i'),
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
      decoration: const BoxDecoration(
        borderRadius: borderRadius15,
        color: Colors.teal,
      ),
      child: Text(text, style: theme.textTheme.labelMedium),
    );
  }
}
