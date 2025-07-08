import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:todo_list/scrollablelist.dart";
import "package:todo_list/imput.dart";

void main() {
  runApp(MyApp());
}
// class StatefulWidget extends StatefulWidget {
//   const StatefulWidget({super.key});

//   @override
//   State<StatefulWidget> createState() => _StatefulWidgetState();
// }
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  // text editing controller to get the input from the user
  final TextEditingController _controller = TextEditingController();

  void addItem() {
    if(_controller.text.isNotEmpty){
      setState(() {
        todoList.add(_controller.text);
        _controller.clear();      // to clear the input field after addition.
      });
    }
  }


  List<String> todoList = [
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
            style: GoogleFonts.rakkas(
              color: Color(0xFFFAFAFA),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,  
            children: [
              const SizedBox(height: 20),
              Input(inputController: _controller),

              const SizedBox(height: 20),
              // elevated button for press and press enter to add item.
              ElevatedButton(onPressed: addItem, child: const Text("Add Item"),),

              const SizedBox(height: 20),
              Scrollablelist( todoList: todoList),
            ])
        ),
      ),
    );
  }
}
