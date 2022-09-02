import 'package:flutter/material.dart';

import '../../../localization/localization.dart';
import '../../../util/theme/theme.dart';

class IngredientsHeader extends StatelessWidget {
  const IngredientsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              t.ingredients,
              style: theme.textTheme.titleMedium,
            ),
            Text(
              '6 ${t.items}',
              style: theme.textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
