import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'
    show AppLocalizations;
import 'package:google_fonts/google_fonts.dart';

import 'localization/localization.dart';
import 'screens/home/home.dart';
import 'util/theme/profiles/dark/dark.theme.dart';
import 'util/theme/theme.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme.copyWith(
        textTheme: GoogleFonts.nunitoTextTheme(darkTheme.textTheme),
      ),
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: onGenerateTitle,
      home: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    t = AppLocalizations.of(context)!;
    theme = Theme.of(context);
    return const HomeScreen();
  }
}
