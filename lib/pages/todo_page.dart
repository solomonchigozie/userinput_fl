// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controller to get access to what user typed
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  //greet function
  void greetUser() {
    String userName = myController.text;
    // print(myController.text);
    setState((){
      greetingMessage = "Hello $userName";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //output
              Text(greetingMessage),

              //textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter your fullname',
                ),
              ),
          
              //button
              ElevatedButton(
                onPressed: greetUser, 
                child: Text('Click Me',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
