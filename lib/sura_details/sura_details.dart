import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_details/sura_details_provider.dart';
import 'package:provider/provider.dart';

import '../MyThemeData.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "SuraDetails";
  SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var details=ModalRoute.of(context)!.settings.arguments as List;
    // if(suraLines.isEmpty) {
    //   loadSureDetails(details[1] + 1);
    // }
    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadSureDetails(details[1]+1),
      builder: (context, child) {
        var pro = Provider.of<SuraDetailsProvider>(context);
        var provider = Provider.of<MyProvider>(context);
        return SafeArea(
          child: Container(
            decoration:  BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(provider.setBackground()),
                    fit: BoxFit.fill
                )
            ),
            child: Scaffold(
              appBar: AppBar(
                title: Text(details[0],style:Theme.of(context).textTheme.bodyLarge,),
              ),
              body: Card(
                margin: const EdgeInsets.all(22),
                color: provider.theme == ThemeMode.light ? Colors.white : const Color(0xff141A2E),
                elevation: 12,
                child: Center(
                  child: ListView.separated(
                    shrinkWrap: true,
                      itemBuilder: (context,i){
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(pro.suraLines[i],style: GoogleFonts.elMessiri(color:provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : Colors.black ,fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 1),textAlign: TextAlign.center),
                        );
                      },
                      separatorBuilder: (context,i)=>const SizedBox(height: 8,),
                      itemCount: pro.suraLines.length
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }


}
