// focus on a text field when a button is tapped
// 1. Create a focusNode
// 2. Pass the FocusNode to a TextField
// 3. Give focus to the TextField when button is tapped.

// Using initState() method of State class and clean it up with dispose() method.

import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const TextField(
                autofocus: true,
              ),
              TextField(
                focusNode: myFocusNode,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => myFocusNode.requestFocus(),
          tooltip: 'Focus Second Text Field',
          child: const Icon(Icons.edit),
        ));
  }
}
