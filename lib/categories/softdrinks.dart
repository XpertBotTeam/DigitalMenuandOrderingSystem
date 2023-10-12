import 'package:flutter/material.dart';

class SoftDrinksPage extends StatelessWidget {
  const SoftDrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soft Drinks'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text('This is the Soft Drinks Page'),
      ),
    );
  }
}