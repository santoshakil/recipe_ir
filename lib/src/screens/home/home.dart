import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/filter.bar.dart';
import 'components/floating.button.dart';
import 'components/list.dart';
import 'components/search.bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (_, __) => const [HomeAppBar(), RecipeSearchBar()],
        body: Column(children: const [_Filter(), _Recipes()]),
      ),
      floatingActionButton: const HomeFloatingButton(),
    );
  }
}

class _Recipes extends StatelessWidget {
  const _Recipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [RecipeList()],
      ),
    );
  }
}

class _Filter extends StatelessWidget {
  const _Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60.0,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        slivers: [RecipeFilterBar()],
      ),
    );
  }
}
