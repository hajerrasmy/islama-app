import 'package:flutter/material.dart';

import '../../hadethDetails/HadethDetailsScreen.dart';
import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDEtailsScreen.rootName, arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
