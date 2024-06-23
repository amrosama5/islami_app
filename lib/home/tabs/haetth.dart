import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadeth_model.dart';

import '../../MyThemeData.dart';
import '../../hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethScreen extends StatefulWidget {
  HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> hadethData = [];

  @override
  Widget build(BuildContext context) {
    if (hadethData.isEmpty) {
      loadFileAhadeth();
    }
    return Column(
      children:
      [
        Container(
          alignment: Alignment.center,
          child: Image.asset("assets/images/hadeth_logo.png"),
        ),
        const Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: MyThemeData.primaryColor,
            ),
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,arguments: hadethData[i]);
                },
                  child: Text(
                hadethData[i].title,
                textAlign: TextAlign.center,
              ));
            },
            itemCount: hadethData.length,
          ),
        )
      ],
    );
  }

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
      setState(() {});
    });
  }
}
