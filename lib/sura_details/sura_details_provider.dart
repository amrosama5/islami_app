import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraDetailsProvider extends ChangeNotifier{
  List<String> suraLines=[];

  loadSureDetails(int index)async{
    String suraDetails=await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines=suraDetails.split("\n");
    suraLines=lines;
    notifyListeners();
  }
}