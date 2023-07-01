import 'dart:math';

import 'package:flutter/material.dart';

class CalculationScreen extends StatelessWidget {
  late int _number ;
  late String _operation;
  late String _message;

  CalculationScreen(int number, String operation) {
    int? result ;


    _number = number;
    _operation = operation;

    if (_operation == "opposite")
      result = -_number;
    else if (_operation == "absolute_value")
      result = _number.abs();
    else if(_operation == "square")
      result = pow(_number, 2) as int?;
    else {
      _message = "Invalid Operation";
      return;
    }

    _message = "The $_operation of $_number is $result";

  }

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed : () {
      Navigator.of(context).pop(); // TO RETURN BACK
    },
        child: Text(_message),
    );
  }
}
