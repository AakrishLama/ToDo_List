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
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(12),
          itemCount: todoList.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            return Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () => deleteItem?.call(index),
                splashColor: const Color.fromARGB(255, 100, 66, 135),
                highlightColor: const Color.fromARGB(255, 193, 147, 238),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    minVerticalPadding: 0,
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    title: Text(
                      todoList[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_outline),
                      color: Colors.grey[600],
                      splashRadius: 20, // Controls splash area
                      onPressed: () => deleteItem?.call(index),
                      style: IconButton.styleFrom(
                        splashFactory:
                            InkRipple.splashFactory, // Material ripple
                        visualDensity: VisualDensity.comfortable,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
