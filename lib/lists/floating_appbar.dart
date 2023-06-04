import 'package:flutter/material.dart';

class Floating_Bar extends StatefulWidget {
  const Floating_Bar({super.key});

  @override
  State<Floating_Bar> createState() => _Floating_BarState();
}

class _Floating_BarState extends State<Floating_Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Bar'),
      ),
    );
  }
}
