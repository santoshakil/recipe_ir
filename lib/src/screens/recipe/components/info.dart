import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';

class RecipeInfo extends StatelessWidget {
  const RecipeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: borderRadius15,
          border: Border.all(color: theme.cardColor),
        ),
        child: Row(
          children: const [
            _Info(),
            _Info(),
            _Info(),
            _Info(),
          ],
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('230',
              style: theme.textTheme.titleMedium!
                  .copyWith(color: Colors.teal.shade300)),
          Text('label',
              style: theme.textTheme.labelMedium!.copyWith(color: Colors.grey)),
        ],
      ),
    );
  }
}
