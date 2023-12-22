import 'package:flutter/material.dart';

class ChaterTitleWidgetVerse extends StatelessWidget {
  String title;
  int index;

  ChaterTitleWidgetVerse(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        ' {$index} $title  ',
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
