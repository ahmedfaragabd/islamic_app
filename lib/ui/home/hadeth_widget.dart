import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/ui/home/hadeth_model.dart';
import 'package:islamic_app/ui/home/hadeth_title_item.dart';

class HadethWidget extends StatefulWidget {
  HadethWidget({super.key});

  @override
  State<HadethWidget> createState() => _HadethWidgetState();
}

class _HadethWidgetState extends State<HadethWidget> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadAhadethFile();
    }
    return Column(
      children: [
        Expanded(
            child:
                Center(child: Image.asset("assets/images/hadeth_header.png"))),
        Divider(),
        Text(
          "الأحاديث",
          style: TextStyle(
              fontSize: 24,
              fontFamily: "El Messiri",
              fontWeight: FontWeight.bold),
        ),
        Divider(),
        Expanded(
          flex: 3,
          child: allHadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) =>
                      HadethTitleItem(hadeth: allHadeth[index ]),
                  separatorBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 2,
                    );
                  },
                  itemCount: allHadeth.length),
        )
      ],
    );
  }

  List<HadethModel> allHadeth = [];

  void loadAhadethFile() async {
    String ahadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethlist = ahadethContent.trim().split("#");
    for (int i = 0; i < hadethlist.length; i++) {
      List<String> oneHadeth = hadethlist[i].trim().split("\n");
      String hadethTitle = oneHadeth[0];
      oneHadeth.removeAt(0);
      String hadethContent = oneHadeth.join(" ");
      allHadeth.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {});
  }
}
