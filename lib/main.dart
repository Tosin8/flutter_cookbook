// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/gestures/inkwell_button.dart';

import 'gestures/dismiss_item.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Waiting_Image(),
    );
  }
}
