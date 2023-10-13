import 'package:flutter/material.dart';

import '../classes/item.dart';

class SoftDrinksPage extends StatelessWidget {
  SoftDrinksPage({super.key});

  List<item> drinks = [
  item(name: 'Coca-Cola', price: 2.49, information: 'Classic cola with a refreshing taste.'),
  item(name: 'Pepsi', price: 2.49, information: 'Popular cola with a hint of citrus flavor.'),
  item(name: 'Sprite', price: 2.49, information: 'Lemon-lime soda known for its crispness.'),
  item(name: 'Fanta', price: 2.49, information: 'Bright and fruity orange soda.'),
  item(name: 'Mountain Dew', price: 2.49, information: 'Citrus-flavored energy soda with a kick.'),
  item(name: 'Dr. Pepper', price: 2.49, information: 'Unique blend of 23 flavors.'),
  item(name: '7UP', price: 2.49, information: 'Refreshing lemon-lime soda.'),
  item(name: 'Root Beer', price: 2.49, information: 'Classic root beer with a frothy head.'),
  item(name: 'Ginger Ale', price: 2.49, information: 'Soothing ginger-flavored soda.'),
  item(name: 'Cream Soda', price: 2.49, information: 'Sweet and creamy vanilla-flavored soda.'),
  item(name: 'Lemon-Lime Soda', price: 2.49, information: 'A blend of lemon and lime flavors.'),
  item(name: 'Orange Soda', price: 2.49, information: 'Zesty and sweet orange-flavored soda.'),
  item(name: 'Grape Soda', price: 2.49, information: 'Bold grape-flavored soda.'),
  item(name: 'Cherry Cola', price: 2.49, information: 'Cola with a burst of cherry flavor.'),
  item(name: 'Cola with Vanilla', price: 2.49, information: 'Cola with a hint of creamy vanilla.'),
  item(name: 'Birch Beer', price: 2.49, information: 'Root beer with a unique wintergreen twist.'),
  item(name: 'Club Soda', price: 2.49, information: 'Carbonated water with a hint of mineral flavor.'),
  item(name: 'Tonic Water', price: 2.49, information: 'Bitter and bubbly tonic water for cocktails.'),
  item(name: 'Red Bull', price: 3.99, information: 'Energy drink for that extra boost.')
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
                title: Text(
                  item.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  'Price: \$${item.price.toStringAsFixed(2)}\n${item.information}',
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
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