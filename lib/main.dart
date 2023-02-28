import 'package:flutter/material.dart';
import 'package:movies_app/home_screen/home_screen.dart';
import 'package:movies_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: ThemeScreen.themeLight,
    );
  }
}
