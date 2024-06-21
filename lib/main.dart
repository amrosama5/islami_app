import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/sura_details.dart';

import 'hadeth_details.dart';
import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
       HomeScreen.routeName: (context) =>  HomeScreen(),
       SuraDetails.routeName : (context ) =>  SuraDetails(),
        HadethDetails.routeName : (context ) =>  HadethDetails(),
      },
    );
  }
}

