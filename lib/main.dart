import 'package:flutter/material.dart';
import 'package:hackdfw/pages/formpage.dart';
import 'package:hackdfw/pages/mainpage.dart';
import 'package:hackdfw/pages/pagecontent/landingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: formPage(),
    );
  }
}
