import 'package:flutter/material.dart';
import 'package:quickie/pages/bookmarkPage.dart';
import 'package:quickie/pages/NewsListPage.dart';
import 'package:quickie/pages/settingPage.dart';

  List<Widget> _widgetOptions = <Widget>[
  NewsListPage(),
  bookmarkPage(),
  SettingPage(),
];

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

    int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Top News'),
        backgroundColor:Colors.teal //[210]
      ),
      body: _widgetOptions.elementAt(_selectedIndex),

       bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          title: Text('Bookmark'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.teal,
      onTap: _onItemTapped,
    ),
    
      
    );
  }
}