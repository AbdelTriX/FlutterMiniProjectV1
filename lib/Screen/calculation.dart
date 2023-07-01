import 'package:flutter/material.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed : () {
      Navigator.of(context).pop(); // TO RETURN BACK
    },
        child: Text("Go Back !!"),
    );
  }
}
