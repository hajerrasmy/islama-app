import 'package:flutter/material.dart';
import 'package:islami_app/ui/chaterDetails/chapterDetailsScreen.dart';
import 'package:islami_app/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:islami_app/ui/home/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          secondary: Color(0xC0B7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDEtailsScreen.rootName: (_) => HadethDEtailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
