import 'package:flutter/material.dart' hide Router;
import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';
import 'package:peresmeshnik_vpn/feature/navigation/navigation_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: context.dependencyFactory.lightThemeData,
    home: const NavigationScreen(),
    onGenerateTitle: (context) => context.ln.appTitle,
    locale: Localization.defaultLocale,
    localizationsDelegates: Localization.localizationDelegates,
    supportedLocales: Localization.supportedLocales,
  );
}
