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
          child: const Text('Go!'),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Route2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // creating a tween, to animate in from the bottom: animating from Offset 0,1 to Offset 0,0.
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      // using a curveTween
      const curve = Curves.ease;
      //var curveTween = CurveTween(curve: curve);
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // final offsetAnimation = animation.drive(tween);

      // combining the tween using chains.

      // using an animatedwidget
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Route2 extends StatelessWidget {
  const Route2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
