import 'package:flutter/material.dart';
import 'package:my_app/modelbottomsheet.dart';
import 'homepage.dart';
import 'statsscreen.dart';
import 'profilepage.dart';
import 'settingspage.dart';

class Pract1 extends StatefulWidget {
  const Pract1({super.key});

  @override
  State<Pract1> createState() => _Pract1State();
}

class _Pract1State extends State<Pract1> {
  int bottomIndex = 1;

  final List<Widget> pages = const [
    Mbsheet(),
    StatsScreen(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(index: bottomIndex, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              bottomIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
               label: "Home"),

            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Stats",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
