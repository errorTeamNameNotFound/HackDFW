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
          SizedBox(
            height: 90,
          ),
          /*
          Page Heading
           */
          // ignore: prefer_const_constructors
          Center(
            child: Text(
              "Recent Matches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Styles.kOffWhite,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          /*
          Recent matches
           */
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
                height: 260,
                width: 300,
                decoration: BoxDecoration(
                  color: Styles.kOffWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 70,
                      ),
                      Text(
                        "Jonathan Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Styles.kGray,
                        ),
                      ),
                      Text(
                        "Male, 25",
                        style: TextStyle(
                          fontSize: 20,
                          color: Styles.kGray,
                        ),
                      )
                    ],
                  ),
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
            height: 30,
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
