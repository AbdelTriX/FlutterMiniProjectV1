import 'package:flutter/material.dart';
import 'package:mini_project01/Screen/calculation.dart';
import 'package:mini_project01/Screen/mainContainer.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: numberController,
          decoration: InputDecoration(
            hintText: 'Number'
          ),
        ),
        ElevatedButton(
            onPressed: () {

              try{
                int number = int.parse(numberController.text);

                // BHAL INTENT LI F JAVA
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => mainContainer(CalculationScreen(number, "opposite"))));
              }on Exception {
                SnackBar snackBar = const SnackBar(
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error, color: Colors.red),
                        SizedBox(width: 5,),
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
                Icon(Icons.calculate, color: Colors.black,),
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
