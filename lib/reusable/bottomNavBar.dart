import 'package:flutter/material.dart';
import 'package:my_app/Pages/chatPage.dart';
import 'package:my_app/Pages/homePage.dart';
import 'package:my_app/Pages/profilePage.dart';
import 'package:my_app/Pages/settingPage.dart';



class Homebottomnav extends StatefulWidget {
  const Homebottomnav({super.key});

  @override
  State<Homebottomnav> createState() => _HomebottomnavState();
}

class _HomebottomnavState extends State<Homebottomnav> {
  int _selectedIndex = 0;

//Function to update the selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//Pages of the bottomNavBar items
  List<Widget> _pages = [
    HomePage(),
    ChartPage(),
    SettingsPage(),
    profilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //displaying the selected page from bottomNavBar
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[200],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          iconSize: 25,
          selectedItemColor: Colors.blue,
          selectedFontSize: 18,
          unselectedItemColor: Colors.blue[200],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat), label: 'chart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'profile'),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}