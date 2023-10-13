import 'package:flutter/material.dart';

import '../classes/item.dart';

class AppetizersPage extends StatelessWidget {
  AppetizersPage({super.key});

  List<item> appetizers = [
  item(name: 'Bruschetta', price: 8.99, information: 'Toasted bread topped with fresh tomatoes and basil.'),
  item(name: 'Caprese Skewers', price: 10.99, information: 'Skewers with mozzarella, tomatoes, and basil, drizzled with balsamic glaze.'),
  item(name: 'Mini Meatballs', price: 9.49, information: 'Savory meatballs served with a tangy sauce.'),
  item(name: 'Stuffed Mushrooms', price: 11.99, information: 'Mushroom caps stuffed with a delicious filling.'),
  item(name: 'Shrimp Cocktail', price: 12.99, information: 'Chilled shrimp served with cocktail sauce.'),
  item(name: 'Deviled Eggs', price: 6.49, information: 'Classic deviled eggs with a hint of spice.'),
  item(name: 'Spring Rolls', price: 8.99, information: 'Crispy spring rolls filled with vegetables and served with dipping sauce.'),
  item(name: 'Mozzarella Sticks', price: 7.99, information: 'Golden-fried mozzarella sticks with marinara sauce.'),
  item(name: 'Nachos', price: 10.49, information: 'Loaded nachos with cheese, jalapeños, and toppings.'),
  item(name: 'Mini Quiches', price: 9.99, information: 'Mini quiches with various fillings.'),
  item(name: 'Hummus and Pita Bread', price: 7.49, information: 'Creamy hummus served with soft pita bread.'),
  item(name: 'Buffalo Chicken Wings', price: 11.99, information: 'Spicy chicken wings with a kick of buffalo sauce.'),
  item(name: 'Crab Cakes', price: 13.49, information: 'Delicious crab cakes with a hint of Old Bay seasoning.'),
  item(name: 'Mini Tacos', price: 9.99, information: 'Mini tacos with a variety of fillings and toppings.'),
  item(name: 'Sliders', price: 12.99, information: 'Mini sandwiches with a choice of fillings and condiments.'),
  item(name: 'Smoked Salmon Canapes', price: 14.49, information: 'Smoked salmon on crisp canapés with cream cheese.'),
  item(name: 'Sushi Rolls', price: 15.99, information: 'Assorted sushi rolls with fresh ingredients.'),
  item(name: 'Cheese and Charcuterie Platter', price: 16.49, information: 'Artisanal cheeses and cured meats with accompaniments.')
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