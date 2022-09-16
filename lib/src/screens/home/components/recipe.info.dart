import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';

class RecipeInfoTextStack extends StatelessWidget {
  const RecipeInfoTextStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Creator name',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              IconButton(
                iconSize: 18.0,
                icon: const Icon(Icons.favorite_outline_rounded),
                onPressed: () {},
              ),
              Text('5.0', style: theme.textTheme.labelMedium),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Recipe Name',
            style: theme.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w900),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Row(
            children: const [
              Icon(Icons.timer_outlined, size: 18.0),
              SizedBox(width: 5),
              Text('15 min'),
            ],
          ),
        ),
      ],
    );
  }
}
