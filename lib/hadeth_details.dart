import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";
  const HadethDetails({super.key});
  @override
  Widget build(BuildContext context) {
    var hadethData = ModalRoute.of(context)!.settings.arguments  as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethData.title,style:Theme.of(context).textTheme.bodyLarge,),
        ),
        body: Card(
          margin: const EdgeInsets.all(22),
          color: Colors.white,
          elevation: 12,
          child: ListView.separated(
              itemBuilder: (context,i){
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(hadethData.hadethConttent[i],textAlign: TextAlign.center,),
                );
              },
              separatorBuilder: (context,i)=>const SizedBox(height: 8,),
              itemCount: hadethData.hadethConttent.length
          ),
        ),
      ),
    );
  }
}
