import 'package:flutter/material.dart';

import 'app_options.dart';
import 'config/router/app_routes.dart';
import 'config/themes/themes.dart';
import 'core/localization/app_localizations.dart';


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    /// title
    debugShowCheckedModeBanner: false,
    scaffoldMessengerKey: scaffoldMessengerKey,

    /// theme style
    theme: lightTheme,
    darkTheme: darkTheme,
    themeMode: AppOptions.of(context).themeMode,

    /// lang
    locale: AppOptions.of(context).locale,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,

    /// pages
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
  );
}
