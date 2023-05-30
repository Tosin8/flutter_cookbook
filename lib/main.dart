import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/drawer.dart';
import 'package:flutter_cookbook/animation/fade_in_out.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Screen_Drawer(),
    );
  }
}
