import 'dart:io';

import 'package:flutter/material.dart';

import '../../../util/theme/theme.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage(this.name, {Key? key}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Hero(
        tag: name,
        child: Card(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: size.width,
                height: 200.0,
                decoration: const BoxDecoration(
                  borderRadius: borderRadius20,
                  image: DecorationImage(
                    image: AssetImage('assets/demo/food.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add_photo_alternate_outlined),
                splashRadius: 18.0,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
