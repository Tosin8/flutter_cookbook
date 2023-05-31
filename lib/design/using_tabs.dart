import 'package:flutter/material.dart';

class Tab_Control extends StatelessWidget {
  const Tab_Control({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.directions),
            ),
            Tab(
              icon: Icon(Icons.cabin),
            ),
            Tab(
              icon: Icon(Icons.alarm),
            ),
          ]),
          title: const Text('Hello World'),
          centerTitle: true,
        ),
      ),
    );
  }
}
