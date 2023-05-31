import 'package:flutter/material.dart';

class Orientation_Grid extends StatelessWidget {
  const Orientation_Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Builder',
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(100, (index) {
              return Center(
                  child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.displayLarge,
              ));
            }));
      }),
    );
  }
}
