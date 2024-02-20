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

Color hexToColor(String hexColor) {
  if (hexColor.length != 8) {
    throw FormatException('Invalid hex color: $hexColor');
  }
  return Color(int.parse(hexColor.substring(0, 6), radix: 16) + 0xFF000000);
}