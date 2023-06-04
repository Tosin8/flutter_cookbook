import 'package:flutter/material.dart';

class Basic_List extends StatelessWidget {
  const Basic_List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        ListTile(
          title: Text('Map'),
          leading: Icon(Icons.map),
        ),
        ListTile(
          title: Text('Phone'),
          leading: Icon(Icons.phone),
        ),
        ListTile(
          title: Text('Account'),
          leading: Icon(Icons.account_box),
        ),
      ],
    ));
  }
}
