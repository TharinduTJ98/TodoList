import 'package:datastore/utils/my_buton.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCansel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCansel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 240, 227, 115),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new Task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                    text: "Cansel", onPressed: onCansel, color: Colors.red),
                const SizedBox(
                  width: 10,
                ),
                MyButton(text: "Save", onPressed: onSave, color: Colors.blue),
              ],
            )
          ],
        ),
      ),
    );
  }
}
