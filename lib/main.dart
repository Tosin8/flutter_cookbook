// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/gestures/inkwell_button.dart';
import 'package:flutter_cookbook/images/cached_image.dart';
import 'package:flutter_cookbook/images/placeholder_image.dart';
import 'package:flutter_cookbook/lists/floating_appbar.dart';
import 'package:flutter_cookbook/lists/horizontal_list.dart';
import 'package:flutter_cookbook/lists/using_list.dart';
import 'package:flutter_cookbook/navigation/hero_demo.dart';

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
      home: const FirstRoute(),
    );
  }
}
