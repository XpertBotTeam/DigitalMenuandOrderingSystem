import 'package:flutter/material.dart';

import '../classes/item.dart';

class SoftDrinksPage extends StatelessWidget {
  SoftDrinksPage({super.key});

  List<item> drinks = [
    item(name:'Coca-Cola'),
    item(name:'Pepsi'),
    item(name:'Sprite'),
    item(name:'Fanta'),
    item(name:'Mountain Dew'),
    item(name:'Dr. Pepper'),
    item(name:'7UP'),
    item(name:'Root Beer'),
    item(name:'Ginger Ale'),
    item(name:'Cream Soda'),
    item(name:'Lemon-Lime Soda'),
    item(name:'Orange Soda'),
    item(name:'Grape Soda'),
    item(name:'Cherry Cola'),
    item(name:'Cola with Vanilla'),
    item(name:'Birch Beer'),
    item(name:'Club Soda'),
    item(name:'Tonic Water'),
    item(name:'Red Bull'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soft Drinks'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          final item = drinks[index];
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