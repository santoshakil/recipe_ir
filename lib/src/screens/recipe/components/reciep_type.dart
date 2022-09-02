import 'package:flutter/material.dart';

class ReciepTypes extends StatelessWidget {
  const ReciepTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: types.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ColoredBox(
                  color: Colors.green.withOpacity(.2),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(types[index]),
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
