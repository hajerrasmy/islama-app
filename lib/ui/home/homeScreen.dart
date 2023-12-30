import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/book/bookTab.dart';
import 'package:islami_app/ui/home/quran/quranTab.dart';
import 'package:islami_app/ui/home/radio/radioTab.dart';
import 'package:islami_app/ui/home/sebha/sebhaTab.dart';
import 'package:islami_app/ui/provider/provider.dart';
import 'package:provider/provider.dart';

import 'Settings/settingsTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";
  int selectedTabIndex = 0;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingProider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(provider.GetBackground()))),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          currentIndex: selectedTabIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/book.png")),
                label: "book"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "radio"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: "Settings"),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QyranTab(),
    BookTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
}
