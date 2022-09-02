import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart' show theme;

class ReciepTypes extends StatelessWidget {
  const ReciepTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          scrollDirection: Axis.horizontal,
          itemCount: types.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ColoredBox(
                  color: Colors.green.withOpacity(.1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: Text(
                        types[index],
                        style: theme.textTheme.labelMedium!
                            .copyWith(color: Colors.teal.shade300),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

final types = [
  'Breakfast',
  'Fast',
  'Easy',
  'Lunch',
  'Dinner',
  'Dessert',
  'Drink'
];
