import 'package:flutter/material.dart';
import '../classes/item.dart';

class BurgersPage extends StatelessWidget {
  BurgersPage({super.key});

  List<item> burgers = [
    item(name: 'Classic Hamburger'),
    item(name: 'CheeseBurger'),
    item(name: 'Bacon CheeseBurger'),
    item(name: 'Veggie Burger'),
    item(name: 'Turkey Burger'),
    item(name: 'Chicken Burger'),
    item(name: 'BBQ Burger'),
    item(name: 'Mushroom Swiss Burger'),
    item(name: 'Guacamole Burger'),
    item(name: 'Hawaiian Burger'),
    item(name: 'Black Bean Burger'),
    item(name: 'Jalapeno Burger'),
    item(name: 'Teriyaki Burger'),
    item(name: 'Pesto Burger'),
    item(name: 'Buffalo Chicken Burger'),
    item(name: 'Chili Burger'),
    item(name: 'Portobello Mushroom Burger'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burgers'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: burgers.length,
        itemBuilder: (context, index) {
          final item = burgers[index];
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