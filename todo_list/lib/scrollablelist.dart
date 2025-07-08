import 'package:flutter/material.dart';

class Scrollablelist extends StatelessWidget {
  final List<String> todoList;
  final Function(int)? deleteItem;

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
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color.fromARGB(255, 20, 15, 28)),
            ),
            child: InkWell(
              // borderRadius: BorderRadius.circular(10),
              onTap: () => deleteItem!(index),
              child: ListTile(
                minTileHeight: 80,
                minLeadingWidth: 90,
                title: Text(todoList[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => deleteItem!(index),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}