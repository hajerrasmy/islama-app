import 'package:flutter/material.dart';

class MyThemeData {
  static bool isDark = false;

  static Color LightPraimy = Color(0xFFB7935F);

  static Color DarktPraimy = Color(0xFF141A2E);

  static Color DarkSecondry = Color(0xFFFACC1D);

  static ThemeData LightThemeData = ThemeData(
      textTheme: TextTheme(
        headlineSmall: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w200),
      ),
      cardColor: Colors.white,
      cardTheme: CardTheme(surfaceTintColor: Colors.white),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 32,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        background: Colors.white,
        seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
        secondary: Color(0xC0B7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.blue,
      ),
      useMaterial3: true,
      dividerColor: LightPraimy,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white));

  static ThemeData DarkThemeData = ThemeData(
      textTheme: TextTheme(
        headlineSmall: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w200),
      ),
      cardColor: DarktPraimy,
      //cardTheme: CardTheme(surfaceTintColor: Colors.transparent),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: DarkSecondry,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 32,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        background: DarktPraimy,
        seedColor: DarktPraimy,
        primary: DarktPraimy,
        secondary: DarkSecondry,
        onPrimary: DarktPraimy,
        onSecondary: Colors.blue,
      ),
      dividerColor: DarkSecondry,
      useMaterial3: true,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: DarktPraimy));
}
