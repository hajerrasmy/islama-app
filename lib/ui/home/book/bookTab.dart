import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Hadeth.dart';
import 'HadethTitleWidget.dart';

class BookTab extends StatefulWidget {
  @override
  State<BookTab> createState() => _BookTabState();
}

class _BookTabState extends State<BookTab> {
  @override
  Widget build(BuildContext context) {
    if (allhadeth.isEmpty) loadHadethfile();
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image(image: AssetImage("assets/images/hadeth-image.png"))),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ))),
          child: Text(
            "Hadeth",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          flex: 3,
          child: allhadeth.isEmpty
              ? Container(child: Center(child: CircularProgressIndicator()))
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitleWidget(allhadeth[index]);
                  },
                  separatorBuilder: (BuildContext, int) => Container(
                    color: Theme.of(context).dividerColor,
                        width: double.infinity,
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
                  itemCount: allhadeth.length),
        )
      ],
    );
  }

  List<Hadeth> allhadeth = [];

  void loadHadethfile() async {
    String fileContect =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = fileContect.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethline = singleHadeth.trim().split("\n");
      String title = hadethline[0];
      hadethline.remove(0);
      String Content = hadethline.join("\n");
      Hadeth h = Hadeth(title, Content);
      allhadeth.add(h);

      setState(() {});
    }
  }
}
