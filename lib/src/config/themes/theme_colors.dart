part of 'themes.dart';

const colorLightScheme = ColorScheme.light(
  primary: Color(0xff0F1923),
  surface: Color(0xFFFAFAFA),
  onSurface: Color(0xFF242424),
  secondary: Color(0xFFFF4655),
  onSecondary: Color(0xFF616161),
  error: Color(0xFFD93F2F),
  surfaceVariant: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFFF0F0F0),
  onBackground: Color(0xFF242424),
  outline: Color(0xFFF5F5F5),
);


///
const colorDarkScheme = ColorScheme.dark(
  primary: Color(0xff0F1923),
  surface: Color(0xFFFAFAFA),
  onSurface: Color(0xFF242424),
  secondary: Color(0xFFFF4655),
  onSecondary: Color(0xFF616161),
  error: Color(0xFFD93F2F),
  surfaceVariant: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFFF0F0F0),
  onBackground: Color(0xFF242424),
  outline: Color(0xFFF5F5F5),
);

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.yellow,
    required this.green,
    required this.blueDark,
    required this.blueLight,
    required this.red,
    required this.brown,
    required this.primaryText,
    required this.secondaryText,
  });

  final Color green;
  final Color yellow;
  final Color blueDark;
  final Color blueLight;
  final Color red;
  final Color brown;
  final Color primaryText;
  final Color secondaryText;

  static const ThemeColors light = ThemeColors(
    yellow: Color(0xFFF4CA36),
    green: Color(0xFF119C2B),
    blueDark: Color(0xFF2A56C8),
    blueLight: Color(0xFF2A7CC8),
    red: Color(0xFFC82A63),
    brown: Color(0xFFC86C2A),
    primaryText: Color(0xFF242424),
    secondaryText: Color(0xFF616161),
  );
  static const ThemeColors dark = ThemeColors(
    yellow: Color(0xFFF4CA36),
    green: Color(0xFF119C2B),
    blueDark: Color(0xFF2A56C8),
    blueLight: Color(0xFF2A7CC8),
    red: Color(0xFFC82A63),
    brown: Color(0xFFC86C2A),
    primaryText: Color(0xFF242424),
    secondaryText: Color(0xFF616161),
  );

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? yellow,
    Color? green,
    Color? primaryText,
    Color? secondaryText,
    Color? blueDark,
    Color? blueLight,
    Color? red,
    Color? brown,
  }) =>
      ThemeColors(
        blueDark: blueDark ?? this.blueDark,
        blueLight: blueLight ?? this.blueLight,
        brown: brown ?? this.brown,
        red: red ?? this.red,
        yellow: yellow ?? this.yellow,
        green: green ?? this.green,
        primaryText: primaryText ?? this.primaryText,
        secondaryText: secondaryText ?? this.secondaryText,
      );

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      blueDark: Color.lerp(blueDark, other.blueDark, t)!,
      blueLight: Color.lerp(blueLight, other.blueLight, t)!,
      brown: Color.lerp(brown, other.brown, t)!,
      red: Color.lerp(red, other.red, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      green: Color.lerp(green, other.green, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
    );
  }
}
