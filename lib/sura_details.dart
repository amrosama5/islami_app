import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines=[];

  @override
  Widget build(BuildContext context) {
    var details=ModalRoute.of(context)!.settings.arguments as List;
    if(suraLines.isEmpty) {
      loadSureDetails(details[1] + 1);
    }
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(details[0],style: GoogleFonts.elMessiri(fontWeight: FontWeight.bold,fontSize: 25),),
            centerTitle: true,
          ),
          body: Card(
            margin: const EdgeInsets.all(22),
            color: Colors.white,
            elevation: 12,
            child: ListView.separated(
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(suraLines[i],style: GoogleFonts.elMessiri(fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: .4),textAlign: TextAlign.center,),
                  );
                },
                separatorBuilder: (context,i)=>const SizedBox(height: 8,),
                itemCount: suraLines.length
            ),
          ),
        ),
      ),
    );
  }

  loadSureDetails(int index)async{
    String suraDetails=await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines=suraDetails.split("\n");
    suraLines=lines;
    setState(() {
      
    });
  }
}
