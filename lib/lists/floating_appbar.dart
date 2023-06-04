import 'package:flutter/material.dart';

// Doing the following to create custom scroll list
//1. Create CustomScrollView
//2. Using SliverAppBar to add a floating app bar
// 3. Ading a list of items using a SliverList

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'Scroll App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.unsplash.com/photo-1685728399491-87603c952191?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
                fit: BoxFit.cover,
              ),
              stretchModes: const [StretchMode.zoomBackground],
            ),
            expandedHeight: 200,
            backgroundColor: Colors.green,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('Item #$index')),
            // Builds 1000 ListTiles
            childCount: 1000,
          )),
        ],
      ),
    );
  }
}
