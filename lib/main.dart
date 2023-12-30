import 'package:flutter/material.dart';
import 'package:islami_app/ui/MyThemeData.dart';
import 'package:islami_app/ui/chaterDetails/chapterDetailsScreen.dart';
import 'package:islami_app/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:islami_app/ui/home/homeScreen.dart';
import 'package:islami_app/ui/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => settingProider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    settingProider SettingProider = Provider.of<settingProider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.LightThemeData,
      darkTheme: MyThemeData.DarkThemeData,
      themeMode: SettingProider.currentTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDEtailsScreen.rootName: (_) => HadethDEtailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
