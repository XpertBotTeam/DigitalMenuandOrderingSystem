import 'package:flutter/material.dart';

class MilkshakesPage extends StatelessWidget {
  const MilkshakesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Milkshakes'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text('This is the Milkshakes Page'),
      ),
    );
  }
}