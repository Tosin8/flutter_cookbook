import 'package:flutter/material.dart';

class MyCustomForm1 extends StatefulWidget {
  const MyCustomForm1({super.key});

  @override
  State<MyCustomForm1> createState() => _MyCustomForm1State();
}

class _MyCustomForm1State extends State<MyCustomForm1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Tap'),
        ));
      },
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
    )));
  }
}
