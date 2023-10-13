import 'package:flutter/material.dart';

import '../classes/item.dart';

class PlatesPage extends StatelessWidget {
  PlatesPage({super.key});

  List<item> plates = [
  item(name: 'Salad Plate', price: 8.99, information: 'A versatile plate for serving salads and appetizers.'),
  item(name: 'Fondue Plate', price: 10.99, information: 'Specially designed plate for fondue meals.'),
  item(name: 'Chip and Dip Plate', price: 9.49, information: 'A divided plate for chips and dips, perfect for sharing.'),
  item(name: 'Pizza Plate', price: 11.99, information: 'Large round plate for serving pizza slices.'),
  item(name: 'Fish Plate', price: 9.99, information: 'Elongated plate for serving fish and seafood dishes.'),
  item(name: 'Steak Plate', price: 12.99, information: 'Sturdy plate for savoring juicy steaks.'),
  item(name: 'Cheese Plate', price: 10.49, information: 'An ideal plate for creating cheese platters.'),
  item(name: 'Sushi Plate', price: 11.99, information: 'A sleek plate designed for sushi presentation.'),
  item(name: 'Pasta Plate', price: 9.99, information: 'Wide and shallow plate for pasta dishes.'),
  item(name: 'Muffin Tin', price: 7.49, information: 'A tin designed for baking muffins and cupcakes.'),
  item(name: 'Butter Dish', price: 6.99, information: 'A dish for keeping butter conveniently at the table.'),
  item(name: 'Oyster Platter', price: 12.99, information: 'Specially designed for serving oysters on the half shell.'),
  item(name: 'Cheese Board', price: 11.99, information: 'Elegant board for arranging cheese selections.'),
  item(name: 'Salad Bowl', price: 9.99, information: 'Deep bowl for tossing and serving salads.'),
  item(name: 'Chopping Block', price: 13.49, information: 'Sturdy block for cutting and chopping ingredients.'),
  item(name: 'Serving Tray', price: 10.99, information: 'Versatile tray for serving a variety of dishes.'),
  item(name: 'Charger Plate', price: 8.99, information: 'Decorative plate used as an underplate for dinner plates.'),
  item(name: 'Trivet', price: 6.99, information: 'Heat-resistant pad for protecting surfaces from hot dishes.'),
  item(name: 'Placemat', price: 5.49, information: 'Decorative mat placed under dinner plates for added style.'),
  item(name: 'Teacup Saucer', price: 7.99, information: 'Saucer for holding teacups during tea service.')
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