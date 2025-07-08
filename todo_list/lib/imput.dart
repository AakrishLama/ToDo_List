import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  // controller for the text field
  final TextEditingController inputController;


  const Input({super.key, required this.inputController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter a Todo Item',
      ),
    );
  }
}
