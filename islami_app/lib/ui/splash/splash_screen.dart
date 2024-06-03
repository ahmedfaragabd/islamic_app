import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:islamic_app/ui/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset(
        AppTheme.isDark
            ? "assets/images/dark_splash .png"
            : "assets/images/splash_background.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
