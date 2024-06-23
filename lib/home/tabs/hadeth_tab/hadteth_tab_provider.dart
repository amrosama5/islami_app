import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../../../models/hadeth_model.dart';

class HadtethTabProvider extends ChangeNotifier{
  List<HadethModel> hadethData = [];

  loadFileAhadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((fileAhadeth) {
      List<String> ahadeth = fileAhadeth.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        List<String> hadethLines = ahadeth[i].trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethConttent = hadethLines;
        hadethData
            .add(HadethModel(title: title, hadethConttent: hadethConttent));
      }
      notifyListeners();
    });
  }
}