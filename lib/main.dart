import 'package:flutter/material.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_details/sura_details.dart';
import 'package:provider/provider.dart';
import 'hadeth_details.dart';
import 'home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp( ChangeNotifierProvider(create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: pro.theme,
      locale: Locale(pro.langCode),
      initialRoute: HomeScreen.routeName,
      routes: {
       HomeScreen.routeName: (context) =>  HomeScreen(),
       SuraDetails.routeName : (context ) =>  SuraDetails(),
        HadethDetails.routeName : (context ) =>  HadethDetails(),
      },
    );
  }
}

