import 'package:flutter/material.dart';

import '../classes/item.dart';

class AppetizersPage extends StatelessWidget {
  AppetizersPage({super.key});

  List<item> appetizers = [
    item(name :'Bruschetta'),
    item(name :'Caprese Skewers'),
    item(name :'Mini Meatballs'),
    item(name :'Stuffed Mushrooms'),
    item(name :'Shrimp Cocktail'),
    item(name :'Deviled Eggs'),
    item(name :'Spring Rolls'),
    item(name :'Mozzarella Sticks'),
    item(name :'Nachos'),
    item(name :'Mini Quiches'),
    item(name :'Hummus and Pita Bread'),
    item(name :'Buffalo Chicken Wings'),
    item(name :'Crab Cakes'),
    item(name :'Mini Tacos'),
    item(name :'Sliders'),
    item(name :'Smoked Salmon Canapes'),
    item(name :'Sushi Rolls'),
    item(name :'Cheese and Charcuterie Platter'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appetizers'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: appetizers.length,
        itemBuilder: (context, index) {
          final item = appetizers[index];
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