import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Items'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const Text('Welcome to categories page'),
    );
  }
}