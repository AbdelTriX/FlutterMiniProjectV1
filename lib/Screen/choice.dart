import 'package:flutter/material.dart';
import 'package:mini_project01/Screen/calculation.dart';
import 'package:mini_project01/Screen/mainContainer.dart';
import 'package:mini_project01/classes/Operation.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({super.key});

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  TextEditingController numberController = TextEditingController();
  final List<Operation> _operations = [
    Operation("Opposite", "opposite"),
    Operation("Absolute value", "absolute-value"),
    Operation("Square", "square"),
  ];

  String _operation = "opposite";
  List<DropdownMenuItem<String>> _items = [];

  //   DropdownMenuItem(value: "opposite", child: Text("Opposite")),
  //   DropdownMenuItem(
  //       value: "absolute-value",
  //       child: Text("Absolute value")),
  //   DropdownMenuItem(value: "square", child: Text("Square"))
  // ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (Operation op in _operations) {
      _items.add(DropdownMenuItem(
        child: Text(op.text),
        value: op.value,
      ));
    };
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: numberController,
          decoration: const InputDecoration(hintText: 'Number'),
        ),
        DropdownButton<String>(
          items: _items,
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
