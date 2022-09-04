import 'package:flutter/material.dart';

import '../../recipe/rp/provider.dart' show foods;

class RecipeList extends StatelessWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      initialItemCount: foods.length,
      itemBuilder: (_, i, a) => Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Image.network(
              foods[i].image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(foods[i].shopName,
                      maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
                Row(
                  children: [
                    const Icon(Icons.star_border, size: 15),
                    const SizedBox(width: 5),
                    Text(foods[i].ratings.toString())
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(foods[i].name, maxLines: 2, overflow: TextOverflow.ellipsis),
              Row(
                children: [
                  const Icon(Icons.watch_later_outlined, size: 15),
                  const SizedBox(width: 5),
                  Text(foods[i].duration)
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
