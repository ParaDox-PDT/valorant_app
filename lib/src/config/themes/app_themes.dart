part of 'themes.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: true,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
      TargetPlatform.iOS:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
      TargetPlatform.macOS:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
      TargetPlatform.windows:
          CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
    },
  ),
  splashFactory:
      Platform.isAndroid ? InkRipple.splashFactory : NoSplash.splashFactory,
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
    ),
  ),
  dividerTheme: const DividerThemeData(thickness: 1),
);

final ThemeData lightTheme = appTheme.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    ThemeTextStyles.light,
    ThemeColors.light,
  ],
  primaryColor: colorLightScheme.primary,
  colorScheme: colorLightScheme,
  dialogBackgroundColor: colorLightScheme.surface,
  scaffoldBackgroundColor: colorLightScheme.background,
  cardColor: Colors.white,
  canvasColor: Colors.white,
  shadowColor: const Color(0xFFF5F5F5),
  disabledColor: const Color(0xFFF5F5F5),
  iconTheme: const IconThemeData(color: Color(0xFF242424)),
  dividerTheme: const DividerThemeData(
    thickness: 1,
    color: Color(0xFFF5F5F5),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    elevation: 1,
    color: Colors.white,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.black45,
  ),
  scrollbarTheme: ScrollbarThemeData(
    thickness: MaterialStateProperty.resolveWith((states) => 3),
    thumbColor: MaterialStateProperty.resolveWith((states) => colorLightScheme.secondary),
    interactive: true,

  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: colorLightScheme.primary,
    foregroundColor: Colors.white,
    elevation: 0,
    focusElevation: 0,
    hoverElevation: 0,
    highlightElevation: 0,
    shape: const CircleBorder(),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) => Colors.white,
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey;
          }
          return colorLightScheme.primary;
        },
      ),
      textStyle: MaterialStatePropertyAll(ThemeTextStyles.light.buttonStyle),
      elevation: const MaterialStatePropertyAll(0),
      shape: const MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 48)),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(),
  bottomSheetTheme: BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    dragHandleSize: const Size(100, 5),
    backgroundColor: const Color(0xFF20262D),
    dragHandleColor: colorLightScheme.secondary,
    surfaceTintColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 4,
    backgroundColor: colorLightScheme.primary,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    selectedLabelStyle: const TextStyle(fontSize: 12),
    unselectedLabelStyle: const TextStyle(fontSize: 12),
    unselectedItemColor: const Color(0xffA0A9B6),
    selectedItemColor: colorLightScheme.primary,
  ),
  tabBarTheme: TabBarTheme(
    indicatorColor: colorLightScheme.primary,
    labelColor: colorLightScheme.primary,
    unselectedLabelColor: const Color(0xFF616161),
    dividerColor: Colors.transparent,
    overlayColor: const MaterialStatePropertyAll(Colors.transparent),
    labelStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        width: 2.5,
        color: colorLightScheme.primary,
      ),
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    elevation: 0,
    backgroundColor: Colors.white,
    height: kToolbarHeight,
    iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
      (states) => const IconThemeData(
        color: Colors.black,
      ),
    ),
    labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (states) => ThemeTextStyles.light.appBarTitle,
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 1,
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarColor: colorLightScheme.primary,
      // ios
      statusBarBrightness: Brightness.light,
      // android
      statusBarColor: colorLightScheme.primary,
      statusBarIconBrightness: Brightness.light,

      systemNavigationBarIconBrightness: Brightness.light,
    ),
    iconTheme: const IconThemeData(
      color: Colors.red,
    ),
    centerTitle: true,
    shadowColor: Colors.black45,
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      fontFamily: 'Bowlby One SC',
    ),
    toolbarTextStyle: ThemeTextStyles.light.appBarTitle,
    backgroundColor: colorLightScheme.primary,
    surfaceTintColor: colorLightScheme.primary,
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Color(0xFF242424),
    tileColor: Colors.white,
    minVerticalPadding: 16,
    textColor: Color(0xFF242424),
    titleTextStyle: TextStyle(
      fontSize: 15,
      height: 20 / 15,
      color: Color(0xFF242424),
      fontWeight: FontWeight.w500,
    ),
    leadingAndTrailingTextStyle: TextStyle(
      fontSize: 13,
      height: 18 / 13,
      color: Color(0xFF616161),
      fontWeight: FontWeight.w400,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 34,
      fontFamily: 'Bowlby One SC',
    ),

    /// text field title style
    titleMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 17,
      fontFamily: 'Bowlby One SC',
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 17,
      fontFamily: 'Bowlby One SC',
    ),

    /// list tile title style
    bodyLarge: TextStyle(
      fontSize: 15,
      height: 20 / 15,
      color: Colors.white,
      fontFamily: 'Bowlby One SC',
      fontWeight: FontWeight.w500,
    ),

    /// list tile subtitle style
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: 'Bowlby One SC',
      fontSize: 17,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: 'Bowlby One SC',
      fontSize: 15,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Bowlby One SC',
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: 'Bowlby One SC',
      fontSize: 17,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Bowlby One SC',
      color: Colors.white,
    ),
  ),
);

final ThemeData darkTheme = appTheme.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    ThemeTextStyles.dark,
    ThemeColors.dark,
  ],
  bottomSheetTheme: const BottomSheetThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: Colors.white,
    indicator: BoxDecoration(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      border: Border.all(color: Colors.blue, width: 2),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    elevation: 2,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // systemNavigationBarColor: ThemeColors.primary,

      /// android
      statusBarIconBrightness: Brightness.light,

      /// ios
      statusBarBrightness: Brightness.dark,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: ThemeTextStyles.dark.appBarTitle,
    // backgroundColor: ThemeColors.cardBackgroundDark,
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
      fontFamily: 'Bowlby One SC',
      fontWeight: FontWeight.w500,
      fontSize: 17,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontFamily: 'Bowlby One SC',
      fontWeight: FontWeight.w500,
      fontSize: 17,
    ),
  ),
);
