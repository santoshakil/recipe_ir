import 'package:flutter/material.dart';

import '../../../localization/localization.dart';
import '../../../util/route/route.dart';
import '../../setting/setting.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      title: Text(t.title),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings_rounded),
          onPressed: () async => fadeRoute(context, const SettingsView()),
        ),
      ],
    );
  }
}
