import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
   const HomeScreen({super.key});


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
              currentIndex: pro.index,
              onTap: (value){
               pro.changeTabsIndex(value);
              },
              items: const [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),),label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"),),label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),),label: ""),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png"),),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
              ],
            ),
            body: pro.screens[pro.index],
          ),
        ],
      
      ),
    );
  }
}
