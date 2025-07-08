import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function() addItem;

  const Button({super.key, required this.addItem});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: addItem,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 50),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.deepPurple),
        ),
      ),
      child: const Text(
        "Add Item",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
