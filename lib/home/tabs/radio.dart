import 'package:flutter/material.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Image.asset("assets/images/radio_image.png",alignment: Alignment.center,),
        Text(AppLocalizations.of(context)!.radio,style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(provider.langCode=="en"? Icons.skip_previous : Icons.skip_next,color:provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,size: 60,),
            Icon(Icons.play_arrow,color: provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,size: 60,),
            Icon(provider.langCode=="en"? Icons.skip_next : Icons.skip_previous,color:provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,size: 60,),
          ],
        )
      ],
    );
  }
}
