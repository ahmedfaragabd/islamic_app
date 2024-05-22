import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/ui/home/hadeth_model.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = "HadethDetails";

  const HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(),
          body: Column(
        children: [
          Text(
            hadethModel.title,
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: " El Messiri"),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.all(20),
                /*elevation: 20,*/
                child: Text(
                  hadethModel.content,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
