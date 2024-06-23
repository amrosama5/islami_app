import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadeth_tab/haetth.dart';
import 'package:islami_app/home/tabs/quran.dart';
import 'package:islami_app/home/tabs/radio.dart';
import 'package:islami_app/home/tabs/sebha_tab/sebha.dart';
import 'package:islami_app/home/tabs/settings_tab/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
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
    var pro = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Stack(
        children: [
          Image(width: double.infinity,image: AssetImage(pro.setBackground()),fit: BoxFit.fill,),
          Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.app_name,style: Theme.of(context).textTheme.displayLarge),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value){
                index = value;
                setState(() {
      
                });
              },
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
