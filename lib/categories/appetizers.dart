import 'package:flutter/material.dart';

class AppetizersPage extends StatelessWidget {
  const AppetizersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appetizers'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text('This is the Appetizers Page'),
      ),
    );
  }
}