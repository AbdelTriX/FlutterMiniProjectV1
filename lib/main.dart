import 'package:flutter/material.dart';

import 'Screen/choice.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mini Projet 01"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: ChoiceScreen(),
        ),
      ),
    );
  }
}

