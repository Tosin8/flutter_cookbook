import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Cached_Image extends StatelessWidget {
  const Cached_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cached Image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 10,
        centerTitle: true,
      ),
      body: Center(
        child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl:
                'https://images.unsplash.com/photo-1524786321032-10cb811ac583?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80'),
      ),
    );
  }
}
