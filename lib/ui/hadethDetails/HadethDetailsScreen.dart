import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/book/Hadeth.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class HadethDEtailsScreen extends StatelessWidget {
  static const String rootName = "HadethDEtailsScreen";

  @override
  Widget build(BuildContext context) {
    var provier = Provider.of<settingProider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(provier.GetBackground()))),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  color: Theme.of(context).cardColor,
                  child: SingleChildScrollView(
                    child: Text(
                      args.Content,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  elevation: 18,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ));
  }
}
