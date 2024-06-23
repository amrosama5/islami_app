import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'hadeth_details.dart';
import 'home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      locale: Locale("en"),
      initialRoute: HomeScreen.routeName,
      routes: {
       HomeScreen.routeName: (context) =>  HomeScreen(),
       SuraDetails.routeName : (context ) =>  SuraDetails(),
        HadethDetails.routeName : (context ) =>  HadethDetails(),
      },
    );
  }
}

