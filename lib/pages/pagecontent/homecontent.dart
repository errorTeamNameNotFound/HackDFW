// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hackdfw/texts.dart';
import 'package:hackdfw/styles.dart';
import 'package:hackdfw/backendcalls/dailyquestions.dart';

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
          Center(
            child: Text(
              "Today's Matches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Styles.kOffWhite,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              print("chat with that person now");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              height: 60,
              decoration: BoxDecoration(
                color: Styles.kOffWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Chat now!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          /*
          Connections
           */
          // ignore: prefer_const_constructors
          Center(
            child: Text(
              "Connections",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Styles.kOffWhite,
              ),
            ),
          ),
          SizedBox(
            height: 10,
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
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Styles.kOffWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        minRadius: 70,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Jonathan Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Styles.kGray,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
            height: 50,
          ),

          /*
          Lost Matches
           */
          // ignore: prefer_const_constructors
          Center(
            child: Text(
              "Lost Matches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Styles.kOffWhite,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 62,
            ),
            height: 120,
            width: 150,
            decoration: BoxDecoration(
              color: Styles.kOffWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 40,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Janette Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Styles.kGray,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Female, 25",
                        style: TextStyle(
                          fontSize: 16,
                          color: Styles.kGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 62,
            ),
            height: 120,
            width: 150,
            decoration: BoxDecoration(
              color: Styles.kOffWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 40,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sue Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Styles.kGray,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Female, 25",
                        style: TextStyle(
                          fontSize: 16,
                          color: Styles.kGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 62,
            ),
            height: 120,
            width: 150,
            decoration: BoxDecoration(
              color: Styles.kOffWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 40,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Nathan Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Styles.kGray,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Male, 25",
                        style: TextStyle(
                          fontSize: 16,
                          color: Styles.kGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
