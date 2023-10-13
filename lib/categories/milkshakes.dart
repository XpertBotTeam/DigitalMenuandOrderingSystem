import 'package:flutter/material.dart';

import '../classes/item.dart';

class MilkshakesPage extends StatelessWidget {
  MilkshakesPage({super.key});

  List<item> milkshakes = [
    item(name: 'Chocolate Milkshake'),
    item(name: 'Vanilla Milkshake'),
    item(name: 'Strawberry Milkshake'),
    item(name: 'Banana Milkshake'),
    item(name: 'Oreo Milkshake'),
    item(name: 'Peanut Butter Milkshake'),
    item(name: 'Caramel Milkshake'),
    item(name: 'Mint Chocolate Milkshake'),
    item(name: 'Coffee Milkshake'),
    item(name: 'Cookies and Cream Milkshake'),
    item(name: 'Mango Milkshake'),
    item(name: 'Raspberry Milkshake'),
    item(name: 'Pistachio Milkshake'),
    item(name: 'Coconut Milkshake'),
    item(name: 'Nutella Milkshake'),
    item(name: 'Almond Joy Milkshake'),
    item(name: 'Key Lime Milkshake'),
    item(name: 'Red Velvet Milkshake'),
    item(name: 'S mores Milkshake'),
    item(name: 'Pineapple Upside-Down Milkshake'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Milkshakes'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: milkshakes.length,
        itemBuilder: (context, index) {
          final item = milkshakes[index];
          final isYellowBackground = index.isEven;

          return Column(
            children: [
              ListTile(
                title: Text(item.name),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Handle adding the item to the order
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      isYellowBackground ? Colors.yellow : Colors.red,
                    ),
                    // Adjust the button size and other properties as needed
                  ),
                  child: const Text(
                    'Add to Order',
                    style: TextStyle(
                      fontSize: 10, // Adjust the button font size
                      color: Colors.white, // Button text color
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.grey, // Optional divider color
              ),
            ],
          );
        },
      ),
    );
  }
}