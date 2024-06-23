import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../MyThemeData.dart';
import '../../../hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../providers/my_provider.dart';
import 'hadteth_tab_provider.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});


  @override
  Widget build(BuildContext context) {
    // if (hadethData.isEmpty) {
    //   loadFileAhadeth();
    // }
    return ChangeNotifierProvider(
      create: (context) => HadtethTabProvider()..loadFileAhadeth(),
      builder: (context, child) {
        var pro = Provider.of<HadtethTabProvider>(context);
        var provider = Provider.of<MyProvider>(context);
        return Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/hadeth_logo.png"),
            ),
             Divider(
              thickness: 3,
              color: provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,
            ),
            Text(
              AppLocalizations.of(context)!.ahadeth,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             Divider(
              thickness: 3,
              color: provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>  Divider(
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color:provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,
                ),
                itemBuilder: (context, i) {
                  return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: pro.hadethData[i]);
                      },
                      child: Text(
                        pro.hadethData[i].title,
                        textAlign: TextAlign.center,
                      ));
                },
                itemCount: pro.hadethData.length,
              ),
            )
          ],
        );
      },
    );
  }
}
