import 'package:flutter/material.dart';

import '../../chaterDetails/chapterDetailsScreen.dart';

class ChaterTitleWidget extends StatelessWidget {
  String title;

  int index;

  ChaterTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routeName,
            arguments: ChapterDetailsArgs(title, index));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
