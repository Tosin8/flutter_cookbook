import 'package:flutter/material.dart';

class ObjectFade extends StatefulWidget {
  const ObjectFade({super.key});

  @override
  State<ObjectFade> createState() => _ObjectFadeState();
}

class _ObjectFadeState extends State<ObjectFade> {
  bool _visible = true;
  //late double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          // opacity: opacity,
          duration: const Duration(seconds: 2),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
            //  opacity = 1; cant toogle
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
