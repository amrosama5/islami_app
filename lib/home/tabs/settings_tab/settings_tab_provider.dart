import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTabProvider extends ChangeNotifier{
   void showLanguageBottomSheet(context){
    showModalBottomSheet(context: context, builder: (context) {
      var pro = Provider.of<MyProvider>(context);
      return Container(
        decoration: BoxDecoration(
            color: pro.theme == ThemeMode.light ? Colors.white :Color(0xff141A2E) ,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  pro.changeLanguageCode("en");
                  },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: pro.langCode == "en" ?  MyThemeData.primaryColor : Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)!.english,style: GoogleFonts.elMessiri(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      )),
                      if(pro.langCode=="en")...[
                      Icon(Icons.done,color: MyThemeData.primaryColor,)
                      ]
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: (){
                  pro.changeLanguageCode("ar");
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: pro.langCode == "ar" ?  MyThemeData.primaryColor : Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)!.arabic,style:GoogleFonts.elMessiri(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      )),
                      if(pro.langCode=="ar")...[
                        Icon(Icons.done,color: MyThemeData.primaryColor,)
                      ]
                      ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
    );
  }

   void showThemeBottomSheet(context){
     showModalBottomSheet(context: context, builder: (context) {
       var pro = Provider.of<MyProvider>(context);
       return Container(
         width: double.infinity,
         height: MediaQuery.of(context).size.height * 0.5,
         decoration: BoxDecoration(
             color: pro.theme == ThemeMode.light ? Colors.white :const Color(0xff141A2E) ,
             borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
         ),
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               InkWell(
                 onTap: (){
                   pro.changeThemeMode(ThemeMode.light);
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     border: Border.all(
                         color: pro.theme == ThemeMode.light ?  MyThemeData.primaryColor : Colors.grey
                     ),
                     borderRadius: BorderRadius.circular(15),
                   ),
                   padding: const EdgeInsets.all(12),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:
                     [
                       Text(AppLocalizations.of(context)!.light,style: pro.theme==ThemeMode.light ? Theme.of(context).textTheme.displayMedium : Theme.of(context).textTheme.displaySmall),
                       if(pro.theme==ThemeMode.light)...[
                         const Icon(Icons.done,color: MyThemeData.primaryColor,)
                       ]
                     ],
                   ),
                 ),
               ),
               SizedBox(
                 height: 25,
               ),
               InkWell(
                 onTap: (){
                   pro.changeThemeMode(ThemeMode.dark);
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: pro.theme == ThemeMode.dark ?  MyThemeData.primaryDarkColor : Colors.grey
                     ),
                     borderRadius: BorderRadius.circular(15),
                   ),
                   padding: EdgeInsets.all(12),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:
                     [
                       Text(AppLocalizations.of(context)!.dark,style:pro.theme==ThemeMode.dark ?  Theme.of(context).textTheme.displayMedium : Theme.of(context).textTheme.displaySmall,),
                       if(pro.theme==ThemeMode.dark)...[
                          Icon(Icons.done,color: pro.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,)
                       ]
                     ],
                   ),
                 ),
               )
             ],
           ),
         ),
       );
     },
     );
   }
}