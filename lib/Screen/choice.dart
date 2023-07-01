import 'package:flutter/material.dart';

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
              int number = int.parse(numberController.text);
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
