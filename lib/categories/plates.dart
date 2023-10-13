import 'package:flutter/material.dart';

import '../classes/item.dart';

class PlatesPage extends StatelessWidget {
  PlatesPage({super.key});

  List<item> plates = [
    item(name:'Salad'),
    item(name:'Fondue'),
    item(name:'Chip and Dip'),
    item(name:'Pizza'),
    item(name:'Fish'),
    item(name:'Steak'),
    item(name:'Cheese'),
    item(name:'Sushi'),
    item(name:'Pasta'),
    item(name:'Muffin Tin'),
    item(name:'Butter Dish'),
    item(name:'Oyster Platter'),
    item(name:'Cheese Board'),
    item(name:'Salad Bowl'),
    item(name:'Chopping Block'),
    item(name:'Tray'),
    item(name:'Charger'),
    item(name:'Trivet'),
    item(name:'Placemat'),
    item(name:'Teacup Saucer'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plates'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: plates.length,
        itemBuilder: (context, index) {
          final item = plates[index];
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