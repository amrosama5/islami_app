import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SebhaTabProvider extends ChangeNotifier{
  int counter = 0;
  int index = 0;
  double angle=0;
  List<String> tasbehat = [
    "سبحان الله",
    "الحمد الله",
    " الله اكبر",
    " لا حول ولا قوه الا بالله"
  ];

  SebhaTabProvider(){
    loadCounterAndIndex();
  }


  SharedPreferences? sharedPreferences;

  saveCounterAndIndex()async{
    await sharedPreferences!.setInt('counter', counter);
    await sharedPreferences!.setInt('index', index);
    notifyListeners();
  }

  Future<void> loadCounterAndIndex()async{
    sharedPreferences =await SharedPreferences.getInstance();
    counter=sharedPreferences!.getInt('counter')!;
    index=sharedPreferences!.getInt('index')!;
    notifyListeners();
  }



  void ontap() {
    angle += 50;
    counter++;
    if (counter == 33) {
      index++;
      counter = 0;
    }
    if (index == tasbehat.length) {
      index = 0;
    }
    saveCounterAndIndex();
    notifyListeners();
  }
}