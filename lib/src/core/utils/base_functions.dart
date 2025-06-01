part of 'utils.dart';

final String defaultSystemLocale = Platform.localeName.split('_').first;

String get defaultLocale => switch (defaultSystemLocale) {
      'ru' => 'en',
      'en' => 'en',
      _ => 'en',
    };

String get defaultTheme =>
    SchedulerBinding.instance.platformDispatcher.platformBrightness.name;

//TODO tilni to'g'irlash uchun

String get getApiLocale => switch (defaultSystemLocale) {
      'ru' => 'en-US',
      'en' => 'en-US',
      _ => 'en-US',
    };

Color hexToColor(String hexColor) {
  if (hexColor.length != 8) {
    throw FormatException('Invalid hex color: $hexColor');
  }
  return Color(int.parse(hexColor.substring(0, 6), radix: 16) + 0xFF000000);
}

String getWeaponCategory(String weaponCategory) => weaponCategory.substring(
      weaponCategory.lastIndexOf(':') + 1,
    );
