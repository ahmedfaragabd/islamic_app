import 'package:flutter/material.dart';
import 'package:islamic_app/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islamic_app/ui/home/home_screen.dart';
import 'package:islamic_app/ui/quran_details/quran_details_screen.dart';
import 'package:islamic_app/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(size: 32),
            unselectedIconTheme: IconThemeData(size: 26)),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
            secondary: Color(0xFFB7935F).withOpacity(0.57),
            onPrimary: Colors.white,
            onSecondary: Colors.black),
        dividerTheme: const DividerThemeData(
          color: Color(0xFFB7935F),
          thickness: 1.5,
        ),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
    );
  }
}
