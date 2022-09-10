import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Card(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            SizedBox(
              width: size.width,
              height: 200.0,
            ),
            IconButton(
              icon: const Icon(Icons.add_photo_alternate_outlined),
              splashRadius: 18.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
