// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackdfw/pages/mainpage.dart';
import 'package:hackdfw/styles.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
        children: <Widget>[
          /*
          Background
           */
          Container(
            child: Image.asset(
              "images/landingpage1.png",
              fit: BoxFit.fill,
            ),
          ),
          /*
          Content
           */
          //add button here leslie
          Positioned(
            bottom: 60,
            right: 45,
            height: 90,
            width: 350,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.0),
                      color: Styles.kOffWhite),
                  height: 90,
                  width: 350,
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
