import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

const img =
    'https://www.howsweeteats.com/wp-content/uploads/2016/08/bacon-avo-egg-toast-I-howsweeteats.com-9.jpg';
