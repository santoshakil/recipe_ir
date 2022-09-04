import 'package:flutter/material.dart';

import 'components/appbar.dart' show HomeAppBar;
import 'components/floating.button.dart' show HomeFloatingButton;
import 'components/list.dart' show RecipeList;
import 'components/search.bar.dart' show RecipeSearchBar;
import 'components/tutorials.dart' show Tutorials;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (_, __) => const [
          HomeAppBar(),
          RecipeSearchBar(),
          Tutorials(),
          SliverToBoxAdapter(child: Divider(endIndent: 10, indent: 10)),
        ],
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            RecipeList(),
          ],
        ),
      ),
      floatingActionButton: const HomeFloatingButton(),
    );
  }
}
