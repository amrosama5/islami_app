import 'package:flutter/material.dart';

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
   notifyListeners();
  }
}