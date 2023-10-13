import 'package:flutter/material.dart';

import '../classes/item.dart';

class PizzaPage extends StatelessWidget {
  PizzaPage({super.key});

  List<item> pizza = [
  item(name: 'Margherita Pizza', price: 12.99, information: 'Classic Italian pizza with tomato, fresh mozzarella, and basil.'),
  item(name: 'Pepperoni Pizza', price: 13.99, information: 'A timeless favorite with pepperoni and melted cheese.'),
  item(name: 'Hawaiian Pizza', price: 13.49, information: 'Tropical delight with ham and pineapple slices.'),
  item(name: 'Supreme Pizza', price: 14.99, information: 'Loaded with a variety of toppings, including peppers, onions, and olives.'),
  item(name: 'BBQ Chicken Pizza', price: 14.49, information: 'Tangy BBQ sauce, grilled chicken, and red onions.'),
  item(name: 'Vegetarian Pizza', price: 12.99, information: 'A garden of fresh veggies on a pizza crust.'),
  item(name: 'Meat Lovers Pizza', price: 15.49, information: 'Packed with a variety of savory meats like sausage, pepperoni, and bacon.'),
  item(name: 'Buffalo Chicken Pizza', price: 14.49, information: 'Spicy buffalo chicken with ranch dressing.'),
  item(name: 'White Pizza', price: 12.99, information: 'Rich and creamy pizza with olive oil, garlic, and cheese.'),
  item(name: 'Pesto Pizza', price: 13.99, information: 'A burst of flavor with basil pesto and sun-dried tomatoes.'),
  item(name: 'Taco Pizza', price: 14.49, information: 'A fusion of pizza and tacos with seasoned ground beef and toppings.'),
  item(name: 'Sausage and Mushroom Pizza', price: 13.99, information: 'Savory sausage and sautéed mushrooms on pizza.'),
  item(name: 'BBQ Pulled Pork Pizza', price: 14.99, information: 'Slow-cooked pulled pork with BBQ sauce and onions.'),
  item(name: 'Shrimp Scampi Pizza', price: 15.99, information: 'Garlicky shrimp scampi on a pizza crust.'),
  item(name: 'Spinach and Artichoke Pizza', price: 13.99, information: 'A creamy blend of spinach, artichoke, and cheese.'),
  item(name: 'Four Cheese Pizza', price: 13.49, information: 'A cheese lover\'s dream with four varieties of cheese.'),
  item(name: 'Caprese Pizza', price: 13.49, information: 'Inspired by the Caprese salad with tomatoes, mozzarella, and basil.')

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