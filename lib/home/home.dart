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
            appBar: AppBar(
              title: Text("إسلامي",style: Theme.of(context).textTheme.displayLarge),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value){
                index = value;
                setState(() {
      
                });
              },
              iconSize: 30,
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
