import 'package:flutter/material.dart';
import 'package:mini_project01/Screen/calculation.dart';
import 'package:mini_project01/Screen/mainContainer.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({super.key});

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  String _operation = "opposite";


  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: numberController,
          decoration: const InputDecoration(hintText: 'Number'),
        ),
        DropdownButton<String>(
          items: const [
            DropdownMenuItem(value: "opposite", child: Text("Opposite")),
            DropdownMenuItem(
                value: "absolute-value",
                child: Text("Absolute value")),
            DropdownMenuItem(value: "square", child: Text("Square"))
          ],
          onChanged: (value) {
            setState(() {
              _operation = value!;

            });
          },
          value: _operation,
        ),
        ElevatedButton(
            onPressed: () {
              try {
                int number = int.parse(numberController.text);

                // BHAL INTENT LI F JAVA
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        mainContainer(CalculationScreen(number, _operation))));
              } on Exception {
                SnackBar snackBar = const SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error, color: Colors.red),
                      SizedBox(
                        width: 5,
                      ),
                      Text("You should enter an Integer"),
                    ],
                  ),
                  duration: Duration(seconds: 2),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.calculate,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Go',
                ),
              ],
            )),
      ],
    );
  }
}
