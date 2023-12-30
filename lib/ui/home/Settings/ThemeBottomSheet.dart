import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    settingProider SettingProider = Provider.of<settingProider>(context);

    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                SettingProider.changeTheme(ThemeMode.light);
              },
              child: SettingProider.isDark()
                  ? getUnslectedItem("Light")
                  : getSlectedItem("Light")),
          InkWell(
              onTap: () {
                SettingProider.changeTheme(ThemeMode.dark);
              },
              child: SettingProider.isDark()
                  ? getSlectedItem("Dark")
                  : getUnslectedItem("Dark"))
        ],
      ),
    );
  }

  Widget getSlectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }

  Widget getUnslectedItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
