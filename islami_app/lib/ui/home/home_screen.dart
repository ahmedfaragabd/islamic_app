import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:islamic_app/ui/home/hadeth_widget.dart';
import 'package:islamic_app/ui/home/quran_widget.dart';
import 'package:islamic_app/ui/home/radio_widget.dart';
import 'package:islamic_app/ui/home/sebha_widget.dart';
import 'package:islamic_app/ui/home/settings_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;
  List<Widget> navWidget = [
    QuranWidget(),
    HadethWidget(),
    RadioWidget(),
    SebhaWidget(),
    SettingsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppTheme.isDark
              ? "assets/images/main_dark.jpg"
              : "assets/images/main_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
          onTap: (index) {
            setState(() {
              currentNavIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/quran_icn.png"),),
                label:AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
              label: AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: AppLocalizations.of(context)!.settings),
          ],
        ),
        body: navWidget[currentNavIndex],
      ),
    );
  }
}
