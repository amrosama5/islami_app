import 'package:flutter/material.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/home/tabs/settings_tab/settings_tab_provider.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsTabProvider(),
      builder: (context, child) {
        var pro = Provider.of<SettingsTabProvider>(context);
        var provider = Provider.of<MyProvider>(context);
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const Spacer(),
              Text(AppLocalizations.of(context)!.language,style:Theme.of(context).textTheme.bodyLarge),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                onTap: (){
                  return pro.showLanguageBottomSheet(context);
                },
                child: Container(
                  width: double.infinity,
                  height:MediaQuery.of(context).size.height * 0.06,
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(color: provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text(provider.langCode == "ar" ? AppLocalizations.of(context)!.arabic : AppLocalizations.of(context)!.english,style:Theme.of(context).textTheme.bodyMedium),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(AppLocalizations.of(context)!.theme,style:Theme.of(context).textTheme.bodyLarge),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                onTap: (){
                  return pro.showThemeBottomSheet(context);
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(color: provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:  Text(provider.theme == ThemeMode.dark ? AppLocalizations.of(context)!.dark : AppLocalizations.of(context)!.light,style:Theme.of(context).textTheme.bodyMedium),
                ),
              ),
              const Spacer(flex: 3,)
            ],
          ),
        );
      },
    );
  }
}