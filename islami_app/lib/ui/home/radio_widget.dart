import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 50, left: 50),
          child: Image.asset("assets/images/radio_image.png"),
        ),
      ),
      SizedBox(height: 50),
      Center(
          child: Text(
        "إذاعـة الـقـرآن الـكـريـم ",
        style: TextStyle(
            fontSize: 24,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.bold),
      )),
      SizedBox(height: 100),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.skip_previous_rounded,
            size: 28,
            color: AppTheme.isDark
                ? AppTheme.darkSecondary
                : AppTheme.lightPrimary,
          ),
          Icon(
            Icons.play_circle_filled_rounded,
            size: 35,
            color: AppTheme.isDark
                ? AppTheme.darkSecondary
                : AppTheme.lightPrimary,
          ),
          Icon(
            Icons.skip_next_rounded,
            size: 28,
            color: AppTheme.isDark
                ? AppTheme.darkSecondary
                : AppTheme.lightPrimary,
          ),
        ],
      )
    ]);
  }
}
