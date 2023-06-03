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
                image:
                    'https://images.unsplash.com/photo-1677463037178-bd8b3a97ceff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
          ],
        ));
  }
}
