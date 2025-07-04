import 'package:flutter/material.dart';

class Scrollablelist extends StatelessWidget {
  final List<String> todoList;
  // Constructor to accept the todoList

  const Scrollablelist({required this.todoList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todoList[index]),
          );
        },
        )
    );
  }
}
