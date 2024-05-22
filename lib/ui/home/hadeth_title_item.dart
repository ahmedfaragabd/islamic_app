import 'package:flutter/material.dart';
import 'package:islamic_app/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islamic_app/ui/home/hadeth_model.dart';

class HadethTitleItem extends StatelessWidget {
  HadethModel hadeth;

  HadethTitleItem({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18,fontFamily:  "El Messiri",fontWeight: FontWeight.bold),
      ),
    );
  }
}
