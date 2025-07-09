import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Scrollablelist extends StatefulWidget {
  final List<String> todoList;
  final Function(int)? deleteItem;
  final Function(int, int)? onReorder;

  const Scrollablelist({
    super.key,
    required this.todoList,
    required this.deleteItem,
    required this.onReorder,
  });

  @override
  State<Scrollablelist> createState() => _ScrollablelistState();
}

class _ScrollablelistState extends State<Scrollablelist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage("images/wallpaper.png"),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: ReorderableListView.builder(
          padding: const EdgeInsets.all(14),
          itemCount: widget.todoList.length,
          onReorder: (oldIndex, newIndex) {
            widget.onReorder!(oldIndex, newIndex);
          },
          itemBuilder: (context, index) {
            return Padding(
              key: Key(widget.todoList[index]),
              padding: const EdgeInsets.only(top: 10), 
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => widget.deleteItem?.call(index),
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
                        widget.todoList[index],
                        style: GoogleFonts.rakkas(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      subtitle: Text(
                        'Long press and drag to reorder',
                        style: GoogleFonts.rakkas(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.drag_handle, color: Colors.grey),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.delete_outline),
                            color: Colors.grey[600],
                            splashRadius: 20,
                            onPressed: () => widget.deleteItem!(index),
                          ),
                        ],
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
