import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../riverpod/state.provider.dart';
import '../../../util/theme/theme.dart';

class RecipeInfoTextStack extends StatelessWidget {
  const RecipeInfoTextStack(this.i, {Key? key}) : super(key: key);
  final int i;

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
              _FavIcon(i: i),
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

class _FavIcon extends ConsumerWidget {
  const _FavIcon({Key? key, required this.i}) : super(key: key);
  final int i;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFevourite = ref.watch(isFevouriteProvider(i));
    return IconButton(
      iconSize: 18.0,
      icon: isFevourite
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
      onPressed: () =>
          ref.read(isFevouriteProvider(i).notifier).state = !isFevourite,
    );
  }
}
