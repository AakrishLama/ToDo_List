import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  // controller for the text field
  final TextEditingController inputController;
  // callback function to be called when the user submits the input
  final VoidCallback? onSubmit;

  const Input({super.key, required this.inputController, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: TextField(
        autofocus: true,
        // height and width of the text field,
        controller: inputController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter a Todo Item',
        ),
        onSubmitted: (_) => onSubmit!(),
      ),
    );
  }
}
