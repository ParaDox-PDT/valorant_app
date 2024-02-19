part of 'utils.dart';

final String defaultSystemLocale = Platform.localeName.split('_').first;

String get defaultLocale => switch (defaultSystemLocale) {
      'ru' => 'ru',
      'en' => 'en',
      _ => 'ru',
    };

String get defaultTheme =>
    SchedulerBinding.instance.platformDispatcher.platformBrightness.name;

String get getApiLocale => switch (defaultSystemLocale) {
      'ru' => 'ru-RU',
      'en' => 'en-US',
      _ => 'ru-RU',
    };