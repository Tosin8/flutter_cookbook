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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextFormField(),
    );
  }
}
