import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:todo_list/scrollablelist.dart";
import "package:todo_list/imput.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
              const Input(),

              const SizedBox(height: 20),
              const ElevatedButton(onPressed: null, child: Text("Add Item")),

              const SizedBox(height: 20),
              Scrollablelist( todoList: todoList),
            ])
        ),
      ),
    );
  }
}
