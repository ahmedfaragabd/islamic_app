import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home/hadeth_widget.dart';
import 'package:islamic_app/ui/home/quran_widget.dart';
import 'package:islamic_app/ui/home/radio_widget.dart';
import 'package:islamic_app/ui/home/sebha_widget.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;
  List<Widget> navWidget=[
    QuranWidget(),
    HadethWidget(),
    SebhaWidget(),
    RadioWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("islamic"),
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
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                  label: "Ahadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                  label: "Radio"),
            ]),
        body:navWidget[currentNavIndex] ,

      ),
    );
  }
}
