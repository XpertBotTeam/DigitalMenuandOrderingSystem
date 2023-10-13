import 'package:flutter/material.dart';

import '../classes/item.dart';

class PizzaPage extends StatelessWidget {
  PizzaPage({super.key});

  List<item> pizza = [
    item(name: 'Margherita Pizza'),
    item(name: 'Pepperoni Pizza'),
    item(name: 'Hawaiian Pizza'),
    item(name: 'Supreme Pizza'),
    item(name: 'BBQ Chicken Pizza'),
    item(name: 'Vegetarian Pizza'),
    item(name: 'Meat Lovers Pizza'),
    item(name: 'Buffalo Chicken Pizza'),
    item(name: 'White Pizza'),
    item(name: 'Pesto Pizza'),
    item(name: 'Taco Pizza'),
    item(name: 'Sausage and Mushroom Pizza'),
    item(name: 'BBQ Pulled Pork Pizza'),
    item(name: 'Shrimp Scampi Pizza'),
    item(name: 'Spinach and Artichoke Pizza'),
    item(name: 'Four Cheese Pizza'),
    item(name: 'Caprese Pizza'),
    item(name: 'Shrimp Scampi Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: pizza.length,
        itemBuilder: (context, index) {
          final item = pizza[index];
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