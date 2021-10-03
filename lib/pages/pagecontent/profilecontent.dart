// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hackdfw/styles.dart';

class ProfileContent extends StatefulWidget {
  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 90,
        ),
        /*
        Page Heading
         */
        // ignore: prefer_const_constructors
        Center(
          child: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Styles.kOffWhite,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              minRadius: 70,
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Jonathan Doe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Styles.kOffWhite,
                  ),
                ),
                Text(
                  "Male, 25",
                  style: TextStyle(
                    fontSize: 20,
                    color: Styles.kOffWhite,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Styles.kOffWhite,
            ),
          ),
        ),
      ],
    );
  }
}
