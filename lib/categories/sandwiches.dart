import 'package:flutter/material.dart';

import '../classes/item.dart';

class SandwichesPage extends StatelessWidget {
  SandwichesPage({super.key});

  List<item> sandwiches = [
    item(name: 'Club Sandwich'),
    item(name: 'BLT'),
    item(name: 'Reuben Sandwich'),
    item(name: 'Turkey and Cranberry Sandwich'),
    item(name: 'Chicken Caesar Wrap'),
    item(name: 'Philly Cheesesteak'),
    item(name: 'Tuna Salad Sandwich'),
    item(name: 'Veggie Wrap'),
    item(name: 'Pulled Pork Sandwich'),
    item(name: 'Grilled Cheese Sandwich'),
    item(name: 'Croissant Sandwich'),
    item(name: 'Monte Cristo'),
    item(name: 'Egg Salad Sandwich'),
    item(name: 'Caprese Sandwich'),
    item(name: 'Falafel Pita'),
    item(name: 'Cubano'),
    item(name: 'Po Boy'),
    item(name: 'Bahn Mi'),
    item(name: 'French Dip'),
    item(name: 'Lobster Roll')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandwiches'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: sandwiches.length,
        itemBuilder: (context, index) {
          final item = sandwiches[index];
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