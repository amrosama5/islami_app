import 'package:flutter/material.dart';
import 'package:islami_app/MyThemeData.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const Spacer(),
          Text("Language",style:Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              width: double.infinity,
              height:MediaQuery.of(context).size.height * 0.06,
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.primaryColor),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text("Arabic",style:Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text("Theme",style:Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  border: Border.all(color: MyThemeData.primaryColor),
                  borderRadius: BorderRadius.circular(15)
              ),
              child:  Text("Light",style:Theme.of(context).textTheme.bodyMedium),
            ),
          ),
          const Spacer(flex: 3,)
        ],
      ),
    );
  }
}