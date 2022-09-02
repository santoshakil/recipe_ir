import 'package:flutter/material.dart';

import 'components/appbar.dart';
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
        headerSliverBuilder: (_, __) => const [
          HomeAppBar(),
          RecipeSearchBar(),
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
