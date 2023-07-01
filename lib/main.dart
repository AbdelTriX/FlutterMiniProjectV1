import 'package:flutter/material.dart';
import 'package:mini_project01/Screen/calculation.dart';

import 'Screen/choice.dart';
import 'Screen/mainContainer.dart';


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
      home: mainContainer(ChoiceScreen()),
    );
  }
}

