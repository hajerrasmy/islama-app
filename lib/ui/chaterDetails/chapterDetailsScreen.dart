import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'chaterTitleWidgetVerse.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = "ChapterDetailsScreen";

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/images/bg3.png"))),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  elevation: 18,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ChaterTitleWidgetVerse(verses[index], index);
                    },
                    itemCount: verses.length,
                  ),
                ),
        ));
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContet =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    verses = fileContet.split('\n');
    print(fileContet);
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;

  int index;

  ChapterDetailsArgs(this.title, this.index);
}
