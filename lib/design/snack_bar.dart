import 'package:flutter/material.dart';

class Snack_Bar extends StatelessWidget {
  const Snack_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Demo'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                  content: const Text('Yah!, A SnackBar!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Show SnackBar')),
      ),
    );
  }
}
