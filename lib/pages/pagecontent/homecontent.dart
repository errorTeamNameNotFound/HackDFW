// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackdfw/texts.dart';
import 'package:hackdfw/styles.dart';

class MatchesContent extends StatefulWidget {
  @override
  _MatchesContentState createState() => _MatchesContentState();
}

class _MatchesContentState extends State<MatchesContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          /*
          Page Heading
           */
          // ignore: prefer_const_constructors
          Center(
            child: Text(
              Texts.kHomeLabel,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Styles.kOffWhite,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          /*
          Recent matches
           */
          Center(
            child: Text(
              "Recent Matches",
              style: TextStyle(color: Styles.kOffWhite, fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                color: Styles.kOffWhite,
                iconSize: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 5,
                ),
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  color: Styles.kOffWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
                color: Styles.kOffWhite,
                iconSize: 40,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Events Near You",
              style: TextStyle(color: Styles.kOffWhite, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            height: 90,
            decoration: BoxDecoration(
              color: Styles.kOffWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Styles.kYellow,
                    ),
                    width: 130,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                /*
                Make into list view builder
                 */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Event Title",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Event time | 4 / 5",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
