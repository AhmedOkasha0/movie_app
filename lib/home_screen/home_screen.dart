import 'package:flutter/material.dart';
import 'package:movies_app/browser/browser_screen.dart';
import 'package:movies_app/home/home_menu.dart';
import 'package:movies_app/search/search_screen.dart';
import 'package:movies_app/watchlisht/watchlist_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/image/home_icon.png'),
              size: 48,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/image/search_icon.png'),
                size: 48,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/image/browse_icon.png'),
              size: 48,
            ),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/image/watchlist_icon.png',
              ),
              size: 48,
            ),
            label: 'Watchlist',
          )
        ],
      ),
      appBar: AppBar(),
      body: Tabs[selectedIndex],
    );
  }

  List<Widget> Tabs = [
    HomeMenu(),
    Search_menu(),
    BrowserMenu(),
    WatchlistMenu()
  ];
}
