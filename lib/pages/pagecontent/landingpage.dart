import 'package:flutter/material.dart';
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
            child:
          Center(
            child: Container(
              decoration: BoxDecoration( shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Styles.kOffWhite),
              height: 90,
              width: 350,
              child: const Text("Get Started", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
                    height: 1.8,)) ,
            ),
          ),
          )],
      ),
    );
  }
}
