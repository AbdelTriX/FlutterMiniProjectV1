import 'package:flutter/material.dart';

Scaffold mainContainer(Widget content) {
  return Scaffold(
    backgroundColor: Colors.indigo,
    appBar: AppBar(
      title: Text("Mini Projet 01"),
    ),
    body: Padding(
      padding: EdgeInsets.all(8.0),
      child: content,
    ));
}