import 'package:flutter/material.dart';

class eCommerce extends StatefulWidget {
  const eCommerce({super.key});

  @override
  State<eCommerce> createState() => _eCommerceState();
}

class _eCommerceState extends State<eCommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Shoe Catalog',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: ListView(children: [
          Row(
            children: [Image.asset(''), Expanded(child: Column())],
          ),
        ]));
  }
}
