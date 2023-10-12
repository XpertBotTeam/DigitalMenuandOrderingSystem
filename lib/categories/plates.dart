import 'package:flutter/material.dart';

class PlatesPage extends StatelessWidget {
  const PlatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plates'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text('This is the Pizzas Page'),
      ),
    );
  }
}