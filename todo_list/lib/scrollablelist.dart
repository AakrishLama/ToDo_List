import 'package:flutter/material.dart';

class Scrollablelist extends StatelessWidget {
  final List<String> todoList;
  final Function(int)? deleteItem;
  // Constructor to accept the todoList

  const Scrollablelist({
    super.key,
    required this.todoList,
    required this.deleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => deleteItem!(index),
            child: ListTile(
              title: Text(todoList[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => deleteItem!(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
