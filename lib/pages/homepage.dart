import 'package:flutter/material.dart';
import 'package:hackdfw/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[
    Text("Home"),
    Text("Profile"),
    Text("Chat"),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Center(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Styles.kOffWhite,
                    ),
                  ),
                ),
                /*
                Recent matches
                 */
                // Row(
                //   children: <Widget>[
                //     Text("Testing"),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
