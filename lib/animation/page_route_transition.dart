import 'package:flutter/material.dart';

class Route1 extends StatelessWidget {
  const Route1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: const Text('Go!')),
      ),
    );
  }
  
 Route _createRoute() {
  return PageRouteBuilder(pageBuilder: ((context, animation, secondaryAnimation) => const Route2(), 
  transitionsB))

 }



