import 'package:flutter/material.dart';
import 'package:islami_app/ui/MyThemeData.dart';
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
      theme: MyThemeData.LightThemeData,
      darkTheme: MyThemeData.DarkThemeData,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDEtailsScreen.rootName: (_) => HadethDEtailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
