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
    'https://images.unsplash.com/photo-1525351484163-7529414344d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80';
