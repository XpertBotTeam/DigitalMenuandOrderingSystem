import 'package:flutter/material.dart';

import '../classes/item.dart';

class MilkshakesPage extends StatelessWidget {
  MilkshakesPage({super.key});

  List<item> milkshakes = [
  item(name: 'Chocolate Milkshake', price: 4.99, information: 'Creamy chocolate milkshake made with rich ice cream and chocolate syrup.'),
  item(name: 'Vanilla Milkshake', price: 4.99, information: 'Classic vanilla milkshake made with smooth vanilla ice cream.'),
  item(name: 'Strawberry Milkshake', price: 5.49, information: 'Refreshing strawberry milkshake with real strawberries.'),
  item(name: 'Banana Milkshake', price: 5.49, information: 'Creamy banana milkshake with ripe banana flavor.'),
  item(name: 'Oreo Milkshake', price: 6.49, information: 'Indulgent Oreo milkshake blended with crushed cookies and cream.'),
  item(name: 'Peanut Butter Milkshake', price: 6.49, information: 'Smooth and nutty peanut butter milkshake.'),
  item(name: 'Caramel Milkshake', price: 5.99, information: 'Sweet and luscious caramel milkshake with caramel drizzle.'),
  item(name: 'Mint Chocolate Milkshake', price: 6.49, information: 'Cool and chocolatey mint milkshake with chocolate chips.'),
  item(name: 'Coffee Milkshake', price: 5.99, information: 'Caffeinated delight with coffee ice cream and coffee flavor.'),
  item(name: 'Cookies and Cream Milkshake', price: 6.49, information: 'Cookies and cream milkshake with cookie crumbles.'),
  item(name: 'Mango Milkshake', price: 5.99, information: 'Tropical mango milkshake with the essence of ripe mangoes.'),
  item(name: 'Raspberry Milkshake', price: 5.99, information: 'Sweet and tangy raspberry milkshake with real raspberries.'),
  item(name: 'Pistachio Milkshake', price: 6.49, information: 'Nutty and creamy pistachio milkshake with crushed pistachios.'),
  item(name: 'Coconut Milkshake', price: 6.49, information: 'Exotic coconut milkshake with coconut cream and flakes.'),
  item(name: 'Nutella Milkshake', price: 6.99, information: 'Decadent Nutella milkshake blended with hazelnut chocolate spread.'),
  item(name: 'Almond Joy Milkshake', price: 6.99, information: 'Inspired by the candy bar, this milkshake combines chocolate, almonds, and coconut.'),
  item(name: 'Key Lime Milkshake', price: 5.99, information: 'Zesty key lime milkshake with a hint of tartness.'),
  item(name: 'Red Velvet Milkshake', price: 6.49, information: 'Creamy red velvet milkshake with a touch of cocoa and buttermilk.'),
  item(name: 'S mores Milkshake', price: 6.99, information: 'Campfire classic with marshmallow, chocolate, and graham crackers.'),
  item(name: 'Pineapple Upside-Down Milkshake', price: 6.49, information: 'Tropical delight with pineapple and brown sugar notes.')

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