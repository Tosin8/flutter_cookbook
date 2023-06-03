import 'package:flutter/material.dart';
import 'package:flutter_cookbook/forms/focus_textfield.dart';
import 'package:flutter_cookbook/forms/inkwell_button.dart';
import 'package:flutter_cookbook/forms/styling_text_field.dart';

import 'forms/form_validation.dart';

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
      home: const MyCustomForm1(),
    );
  }
}
