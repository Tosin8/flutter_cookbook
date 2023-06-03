import 'package:flutter/material.dart';

class Item_Swap extends StatefulWidget {
  const Item_Swap({super.key});

  @override
  State<Item_Swap> createState() => _Item_SwapState();
}

class _Item_SwapState extends State<Item_Swap> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('$item dismissed')));
                },
                child: ListTile(
                  title: Text(item),
                ));
          }),
    );
  }
}
