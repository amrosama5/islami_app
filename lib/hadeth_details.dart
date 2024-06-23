import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/models/hadeth_model.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";
  const HadethDetails({super.key});
  @override
  Widget build(BuildContext context) {
    var hadethData = ModalRoute.of(context)!.settings.arguments  as HadethModel;
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.setBackground()),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethData.title,style:Theme.of(context).textTheme.bodyLarge,),
        ),
        body: Card(
          margin: const EdgeInsets.all(22),
          color: provider.theme == ThemeMode.light ? Colors.white : Color(0xff141A2E),
          elevation: 12,
          child: Center(
            child: ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text( style: GoogleFonts.elMessiri(color:provider.theme == ThemeMode.light ? Colors.black : Color(0xffFACC1D) ,fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: 1),textAlign: TextAlign.center,hadethData.hadethConttent[i]),
                  );
                },
                separatorBuilder: (context,i)=>const SizedBox(height: 8,),
                itemCount: hadethData.hadethConttent.length
            ),
          ),
        ),
      ),
    );
  }
}
