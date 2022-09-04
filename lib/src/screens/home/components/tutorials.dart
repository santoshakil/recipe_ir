import 'package:flutter/material.dart';

class Tutorials extends StatelessWidget {
  const Tutorials({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.all(10),
      sliver: SliverToBoxAdapter(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: ColoredBox(
            color: theme.cardColor,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Image.network(tutorialImg, fit: BoxFit.cover),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const ColoredBox(
                      color: Colors.black26,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.play_arrow, color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const tutorialImg =
    'https://images.unsplash.com/photo-1516824711718-9c1e683412ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80';
