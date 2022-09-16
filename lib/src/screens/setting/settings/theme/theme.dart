import 'package:flutter/material.dart';

import '../../../../localization/localization.dart';

class ThemeTile extends StatelessWidget {
  const ThemeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: true,
      title: Text(t.theme),
      onChanged: (v) {},
    );
  }
}
