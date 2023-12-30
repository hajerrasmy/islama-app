import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/Settings/LanguageBottomSheet.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';
import 'ThemeBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingProider>(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme"),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1,
                  )),
              child: Text(
                provider.isDark() ? 'Dark ' : 'Light',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text("Language"),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1,
                  )),
              child: Text(
                "English",
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeBottomSheet();
        });
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}
