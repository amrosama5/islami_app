import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home/tabs/hadeth_tab/haetth.dart';
import '../home/tabs/quran.dart';
import '../home/tabs/radio.dart';
import '../home/tabs/sebha_tab/sebha.dart';
import '../home/tabs/settings_tab/settings.dart';

class MyProvider extends ChangeNotifier{
  String langCode="en";
  ThemeMode theme = ThemeMode.light;
  SharedPreferences? sharedPreferences;
  void changeLanguageCode(String langCode){
    this.langCode = langCode;
    notifyListeners();
    saveLanguage(langCode);
  }


  void changeThemeMode(ThemeMode theme){
    this.theme = theme;
    notifyListeners();
    saveTheme(theme);
  }


  saveLanguage(String lang){
    sharedPreferences!.setString('lang',lang);
  }

  Future<void> loadLanguage()async{
    sharedPreferences =await SharedPreferences.getInstance();
    String? lang=sharedPreferences!.getString('lang');
    if(lang!=null){
      changeLanguageCode(lang);
    }
  }


  saveTheme(ThemeMode themeMode){
    String theme = themeMode == ThemeMode.dark ?"dark":"light";
    sharedPreferences!.setString('theme',theme);
  }

  Future<void> loadTheme()async{
    sharedPreferences =await SharedPreferences.getInstance();
    String? theme=sharedPreferences!.getString('theme');
    if(theme!=null){
      if(theme=="dark") {
        changeThemeMode(ThemeMode.dark);
      } else if(theme=="light"){
        changeThemeMode(ThemeMode.light);
      }
    }
  }


  String setBackground(){
    if(theme==ThemeMode.light){
      return "assets/images/background.png";
    }else{
      return "assets/images/dark_bg.png";
    }
  }

  List<Widget> screens =  [const QuranScreen(),const SebhaScreen(),HadethScreen(),const RadioScreen(),const SettingsScreen()];
  int index = 0;


  changeTabsIndex(int index){
    this.index = index;
    notifyListeners();
  }
}