import 'package:flutter/material.dart';
import 'package:hackdfw/globals.dart' as globals;

class formPage extends StatefulWidget {
  @override
  _formPageState createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          children: [
      Column(
      children: [
      Text('First Name'),
      TextFormField(
        onChanged: (String value) {
          setState(() {
            value = globals.fName;
          });
        },
        textAlign: TextAlign.center,
        cursorColor: Colors.black12,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          hintText: 'John',
        ),
      ),
    ],
    ),
    ],
    ),
    );
  }
}