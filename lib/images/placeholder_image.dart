import 'package:flutter/material.dart';

class Waiting_Image extends StatefulWidget {
  const Waiting_Image({super.key});

  @override
  State<Waiting_Image> createState() => _Waiting_ImageState();
}

class _Waiting_ImageState extends State<Waiting_Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Loading Text'),
        ),
        body: ListView(
          children: [
            FadeInImage.assetNetwork(
                placeholder: 'assets/images/spinner.gif',
                image: 'assets/images/hamburger.jpg'),
          ],
        ));
  }
}
