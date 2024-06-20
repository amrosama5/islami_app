import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/MyThemeData.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  int index = 0;
  double angle=0;
  List<String> tasbehat = [
    "سبحان الله",
    "الحمد الله",
    " الله اكبر",
    " لا حول ولا قوه الا بالله"
  ];
  @override
  Widget build(BuildContext context) {
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
                    onTap: ontap,
                    child: Transform.rotate(
                      angle: angle,
                        child: Image.asset("assets/images/body of seb7a.png"))),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(183, 147, 95, 80),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "$counter",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
              color: const Color(0xffB7935F),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              tasbehat[index],
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  void ontap() {
    angle += 50;
    counter++;
    if (counter == 33) {
      index++;
      counter = 0;
    }
    if (index == tasbehat.length) {
      index = 0;
    }
    setState(() {});
  }
}
