import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/tabs/haetth.dart';
import 'package:islami_app/home/tabs/quran.dart';
import 'package:islami_app/home/tabs/radio.dart';
import 'package:islami_app/home/tabs/sebha.dart';
import 'package:islami_app/home/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const Image(width: double.infinity,image: AssetImage("assets/images/background.png"),fit: BoxFit.fill,),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text("إسلامي",style: GoogleFonts.elMessiri(fontWeight: FontWeight.w700,fontSize: 30),),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black45,
              currentIndex: index,
              onTap: (value){
                index = value;
                setState(() {
      
                });
              },
              backgroundColor: Color(0xffB7935F),
              iconSize: 30,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),),label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"),),label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),),label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png"),),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
              ],
            ),
            body: screens[index],
          ),
        ],
      
      ),
    );
  }
  List<Widget> screens =  [QuranScreen(),SebhaScreen(),HadethScreen(),RadioScreen(),SettingsScreen()];
}
