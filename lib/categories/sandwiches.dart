import 'package:flutter/material.dart';

class SandwichesPage extends StatelessWidget {
  const SandwichesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandwiches'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text('This is the Sandwiches Page'),
      ),
    );
  }
}