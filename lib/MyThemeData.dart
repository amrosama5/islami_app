import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class  MyThemeData{
   static const Color primaryColor=Color(0xffB7935F);
   static const Color primaryDarkColor=Color(0xffFACC1D);
   static ThemeData lightTheme = ThemeData(
     textTheme: TextTheme(
       bodyLarge: GoogleFonts.elMessiri(
         fontWeight: FontWeight.bold,
         fontSize: 25,
       ),
       bodyMedium: GoogleFonts.elMessiri(
           fontWeight: FontWeight.w600,
           fontSize: 20
       ),
       bodySmall:  GoogleFonts.elMessiri(
           fontWeight: FontWeight.w400,
           fontSize: 20
       ),
       displayMedium: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 25,
           color: primaryColor
       ),
       displaySmall: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 25,
           color: Colors.black
       ),
       displayLarge: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 30
       ),
     ),
     scaffoldBackgroundColor: Colors.transparent,
     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.black45,
       showSelectedLabels: false,
       showUnselectedLabels: false,
       type: BottomNavigationBarType.fixed,
       backgroundColor: primaryColor,
     ),
     appBarTheme: AppBarTheme(
       backgroundColor: Colors.transparent,
       centerTitle: true,
       titleTextStyle: GoogleFonts.elMessiri(fontWeight: FontWeight.bold,fontSize: 30),
       elevation: 0,
         iconTheme: IconThemeData(
             color: Colors.black
         )
     ),
     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
     useMaterial3: true,
   );


   static ThemeData darkTheme = ThemeData(
     textTheme: TextTheme(
       bodyLarge: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 25,
           color: Colors.white
       ),
       displayMedium: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 25,
           color: primaryDarkColor
       ),
       displaySmall: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 25,
           color: Colors.white
       ),
       bodyMedium: GoogleFonts.elMessiri(
           fontWeight: FontWeight.w600,
           fontSize: 20,
           color: Colors.white
       ),
       bodySmall:  GoogleFonts.elMessiri(
           fontWeight: FontWeight.w400,
           fontSize: 20,
           color: Colors.white
       ),
       displayLarge: GoogleFonts.elMessiri(
           fontWeight: FontWeight.bold,
           fontSize: 30,
           color: Colors.white
       ),
     ),
     scaffoldBackgroundColor: Colors.transparent,
     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
       selectedItemColor: Color(0xffFACC1D),
       unselectedItemColor: Colors.white,
       showSelectedLabels: false,
       showUnselectedLabels: false,
       type: BottomNavigationBarType.fixed,
       backgroundColor: Color(0xff141A2E),
     ),
     appBarTheme: AppBarTheme(
       backgroundColor: Colors.transparent,
       centerTitle: true,
       titleTextStyle: GoogleFonts.elMessiri(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
       elevation: 0,
       iconTheme: IconThemeData(
         color: Colors.white
       )
     ),
     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
     useMaterial3: true,
   );
}