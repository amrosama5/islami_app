import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/home/tabs/sebha_tab/sebha_tab_provider.dart';
import 'package:provider/provider.dart';

import '../../../providers/my_provider.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SebhaTabProvider(),
      builder: (context, child) {
        var pro = Provider.of<SebhaTabProvider>(context);
        var provider = Provider.of<MyProvider>(context);
        return SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset(
                      "assets/images/head of seb7a.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.105),
                    child: GestureDetector(
                        onTap:pro. ontap,
                        child: Transform.rotate(
                            angle: pro.angle,
                            child: Image.asset(
                                "assets/images/body of seb7a.png"))),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.count_tsabe7,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  color:provider.theme == ThemeMode.dark ? Color(0xff141A2E) : Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "${pro.counter}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                     EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                decoration: BoxDecoration(
                  color: provider.theme == ThemeMode.dark ? MyThemeData.primaryDarkColor : MyThemeData.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  pro.tasbehat[pro.index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      textStyle:  TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: provider.theme == ThemeMode.dark ? Colors.black : Colors.white)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
