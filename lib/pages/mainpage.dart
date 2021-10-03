// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackdfw/pages/pagecontent/chatcontent.dart';
import 'package:hackdfw/pages/pagecontent/homecontent.dart';
import 'package:hackdfw/pages/pagecontent/profilecontent.dart';
import 'package:hackdfw/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  /*
  Add widget pages here
   */
  final List<Widget> _widgetOption = <Widget>[
    ProfileContent(),
    ChatContent(),
    MatchesContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Styles.kOffWhite,
        backgroundColor: Styles.kGray,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Styles.kOffWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
            backgroundColor: Styles.kOffWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Matches',
            backgroundColor: Styles.kOffWhite,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Styles.kYellow,
        onTap: _onItemTapped,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          /*
          Background
           */
          Container(
            child: Image.asset(
              "images/background.png",
              fit: BoxFit.fill,
            ),
          ),
          /*
          Content
           */
          _widgetOption.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}
