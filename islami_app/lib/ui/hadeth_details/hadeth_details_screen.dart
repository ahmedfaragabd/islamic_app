import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home/hadeth_widget.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';
import '../../style/app_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const routeName = "HadethDetailsScreen(";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)?.settings.arguments as HadethModel;
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.theme == ThemeMode.dark
                  ? "assets/images/dark_background.png"
                  : "assets/images/main_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(
              hadethModel.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: provider.theme == ThemeMode.dark
                      ? Theme.of(context).primaryColorDark
                      : Colors.white,
                  margin: EdgeInsets.all(20),
                  /*elevation: 20,*/
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Text(
                          hadethModel.content,
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
