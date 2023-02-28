import 'package:flutter/material.dart';

class ThemeScreen{
  static Color  primaryColor=Color(0xff121312);
  static ThemeData themeLight=ThemeData(
    canvasColor: primaryColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: primaryColor
    ),
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,

      backgroundColor: Colors.transparent,
      selectedItemColor: Color(0xffFFBB3B),
      unselectedItemColor: Colors.white,
    )



  );
}