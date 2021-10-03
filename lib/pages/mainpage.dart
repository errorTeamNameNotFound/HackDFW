// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackdfw/pages/pagecontent/homecontent.dart';
import 'package:hackdfw/styles.dart';
import 'package:hackdfw/pages/chat/channellistpage.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:hackdfw/globals.dart' as globals;

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
    Text("Profile"),
    HomeContent(),
    // Text("Chat"),
    StreamChannel(
      child: const ChannelListPage(),
      channel: globals.channel,
    ),
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
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Styles.kOffWhite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Styles.kOffWhite,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Styles.kYellow,
        onTap: _onItemTapped,
      ),
      body: Stack(
        children: <Widget>[
          /*
          Background
           */
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment
                    .bottomCenter, // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Styles.kDarkBlue,
                  Styles.kBlue,
                ], // red to yellow
              ),
            ),
          ),
          /*
          Content
           */
          SafeArea(
            child: _widgetOption.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}
