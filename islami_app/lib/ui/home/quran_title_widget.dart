import 'package:flutter/material.dart';
import 'package:islamic_app/providers/settings_provider.dart';
import 'package:islamic_app/ui/quran_details/quran_details_screen.dart';
import 'package:provider/provider.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;

  QuranTitleWidget(
      {super.key,
      required this.title,
      required this.versesNumber,
      required this.index});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,
            arguments: QuranDetailsArgs(title, index));
      },
      child: Row(
        children: [
          Expanded(
            child: Text(title,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center),
          ),
          Container(
            width: 1.5,
            height: 35,
            color: provider.theme == ThemeMode.dark
                ? Theme.of(context).dividerColor
                : Theme.of(context).primaryColor,
          ),
          Expanded(
              child: Text(versesNumber.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}
