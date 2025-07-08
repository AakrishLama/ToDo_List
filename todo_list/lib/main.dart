import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:todo_list/scrollablelist.dart";
import "package:todo_list/imput.dart";
import "package:todo_list/button.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // text editing controller to get the input from the user
  final TextEditingController _controller = TextEditingController();

  void addItem() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        todoList.add(_controller.text.trim());
        _controller.clear(); // to clear the input field after addition.
      });
    }
  }

  void removeItem(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  List<String> todoList = [
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
    "Buy Milk",
    "Buy Eggs",
    "Buy Bread",
    "Buy Cheese",
    "Buy Juice",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Item to the Todo List",
            style: GoogleFonts.rakkas(color: Color(0xFFFAFAFA)),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              //press enter to add item
              Input(inputController: _controller, onSubmit: addItem),

              const SizedBox(height: 20),
              Button(addItem: addItem),
              

              const SizedBox(height: 20),
              Scrollablelist(
                todoList: todoList,
                deleteItem: removeItem,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
