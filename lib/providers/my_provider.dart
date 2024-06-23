import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
}