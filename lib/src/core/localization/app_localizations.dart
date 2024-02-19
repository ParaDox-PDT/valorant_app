import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_localizations/flutter_localizations.dart';

final class AppLocalizations {
  AppLocalizations._();

  static AppLocalizations of(BuildContext context) =>
      Localizations.of(context, AppLocalizations) ?? instance;

  static AppLocalizations get instance => AppLocalizations._();
  static Map<String, dynamic> _localizedValues = {};

  String translate(String key) {
    if (_localizedValues.isNotEmpty) {
      return _localizedValues[key] ?? '* $key';
    }
    return '';
  }

  static Future<AppLocalizations> load(Locale locale) async {
    final String jsonContent = await rootBundle.loadString(
      'assets/locale/${locale.languageCode}.json',
    );
    _localizedValues = json.decode(jsonContent) as Map<String, dynamic>;
    return instance;
  }

  static const Iterable<LocalizationsDelegate> localizationsDelegates = [
    TranslationsDelegate(),
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate
  ];

  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('ru', 'RU'),
  ];
}

class TranslationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['ru', 'en'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async =>
      await SynchronousFuture<AppLocalizations>(
          await AppLocalizations.load(locale));

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}
