import 'package:flutter/material.dart';
import 'package:hackdfw/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /*
          Background
           */
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
