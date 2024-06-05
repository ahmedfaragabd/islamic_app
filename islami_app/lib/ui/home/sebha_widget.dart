import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({super.key});

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> sebhaList = ["سـبحـان الله", "الـحمـد الله", "الله اكبر"];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.height * .08),
              child: Image.asset(
                "assets/images/head_of_seb7a.png",
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQuery.height * 0.17),
              child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    "assets/images/body_of_seb7a.png",
                    width: 200,
                    height: 200,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          AppLocalizations.of(context)!.numberOfPraises,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 18,
        ),
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: provider.theme == ThemeMode.dark
                ? Theme.of(context).primaryColorDark
                : Theme.of(context).primaryColor,
          ),
          child: Text(
            "$counter",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MaterialButton(
          height: 80,
          minWidth: 170,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: provider.theme == ThemeMode.dark
              ? Theme.of(context).dividerColor
              : Theme.of(context).primaryColor,
          onPressed: () {
            sebha();
          },
          child: Text(
            sebhaList[index],
            style: TextStyle(
                fontFamily: "El Messiri,",
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
      ]),
    );
  }

  void sebha() {
    if (counter < 33) {
      counter++;
      angle += 3;
    } else {
      if (index < 2) {
        index++;
        counter = 0;
      } else {
        index = 0;
        counter = 0;
      }
    }
    setState(() {});
  }
}
