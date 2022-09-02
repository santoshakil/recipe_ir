import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';

class RecipeNameHeader extends StatelessWidget {
  const RecipeNameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(10, 10.0, 10, 0.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'This is Recipe name',
          style: theme.textTheme.titleLarge,
        ),
      ),
    );
  }
}
