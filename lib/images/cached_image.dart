import 'package:flutter/material.dart';

class Cached_Image extends StatelessWidget {
  const Cached_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cached Image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 10,
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
