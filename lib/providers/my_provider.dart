import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/tabs/hadeth_tab/haetth.dart';
import '../home/tabs/quran.dart';
import '../home/tabs/radio.dart';
import '../home/tabs/sebha_tab/sebha.dart';
import '../home/tabs/settings_tab/settings.dart';

class MyProvider extends ChangeNotifier{
  String langCode="en";
  ThemeMode theme = ThemeMode.light;

  void changeLanguageCode(String langCode){
    this.langCode = langCode;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode theme){
    this.theme = theme;
    notifyListeners();
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