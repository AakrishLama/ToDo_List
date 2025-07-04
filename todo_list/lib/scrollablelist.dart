import 'package:flutter/material.dart';

class  Scrollablelist extends StatelessWidget {
  final List<String> todoList;
  // Constructor to accept the todoList

  const Scrollablelist({required this.todoList});

  @override
  Widget build(BuildContext context) {
    return Container (
      child: Text("scrollable"),
    );

  }
}