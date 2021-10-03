// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hackdfw/styles.dart';

class ProfileContent extends StatefulWidget {
  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  late TextEditingController _bioTextController;

  @override
  void initState() {
    super.initState();
    _bioTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _bioTextController.dispose();
  }

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
              minRadius: 65,
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
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Frisco, TX",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 356,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Styles.kOffWhite,
                    ),
                    child: TextField(
                      controller: _bioTextController,
                      onChanged: (String value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Hi. This is my bio.",
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
