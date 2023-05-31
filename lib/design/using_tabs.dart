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
        body: TabBarView(
            children: [const Icon(Icons.directions_car), page2(), page3()]),
      ),
    );
  }

  Container page3() {
    return Container(
      decoration: const BoxDecoration(color: Colors.yellow),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(''),
              const Text(
                'Housing',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }

  Container page2() {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.pink,
            ),
            height: 300,
            width: 300,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.green),
            height: 300,
            width: 300,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.pink,
            ),
            height: 300,
            width: 300,
          ),
        ],
      ),
    );
  }
}
