import 'package:flutter/material.dart';

import '../classes/item.dart';

class SandwichesPage extends StatelessWidget {
  SandwichesPage({super.key});

  List<item> sandwiches = [
  item(name: 'Club Sandwich', price: 11.99, information: 'A triple-decker classic with turkey, bacon, and more.'),
  item(name: 'BLT', price: 9.49, information: 'Bacon, lettuce, and tomato on toasted bread.'),
  item(name: 'Reuben Sandwich', price: 10.99, information: 'Grilled sandwich with corned beef, sauerkraut, and Swiss cheese.'),
  item(name: 'Turkey and Cranberry Sandwich', price: 10.99, information: 'Sliced turkey with cranberry sauce on your choice of bread.'),
  item(name: 'Chicken Caesar Wrap', price: 9.99, information: 'Grilled chicken with Caesar dressing and romaine lettuce in a wrap.'),
  item(name: 'Philly Cheesesteak', price: 12.49, information: 'Sliced steak with onions, peppers, and melted cheese on a roll.'),
  item(name: 'Tuna Salad Sandwich', price: 9.99, information: 'Tuna salad on your choice of bread with lettuce and tomato.'),
  item(name: 'Veggie Wrap', price: 8.99, information: 'A wrap filled with assorted fresh vegetables and hummus.'),
  item(name: 'Pulled Pork Sandwich', price: 12.99, information: 'Slow-cooked pulled pork with barbecue sauce on a bun.'),
  item(name: 'Grilled Cheese Sandwich', price: 7.99, information: 'A classic comfort food with melted cheese between slices of bread.'),
  item(name: 'Croissant Sandwich', price: 10.49, information: 'Savory or sweet fillings inside a buttery croissant.'),
  item(name: 'Monte Cristo', price: 11.49, information: 'A fried ham and cheese sandwich often dusted with powdered sugar.'),
  item(name: 'Egg Salad Sandwich', price: 8.99, information: 'Egg salad on your choice of bread with lettuce and tomato.'),
  item(name: 'Caprese Sandwich', price: 9.99, information: 'Fresh mozzarella, tomato, and basil with balsamic glaze on a roll.'),
  item(name: 'Falafel Pita', price: 9.99, information: 'A pita filled with crispy falafel balls and toppings.'),
  item(name: 'Cubano', price: 11.99, information: 'A Cuban sandwich with roast pork, ham, and pickles.'),
  item(name: 'Po Boy', price: 12.49, information: 'A Louisiana-style sandwich with a choice of fillings.'),
  item(name: 'Bahn Mi', price: 10.99, information: 'A Vietnamese sandwich with various meats and pickled vegetables.'),
  item(name: 'French Dip', price: 11.49, information: 'A sandwich with roast beef and a side of au jus for dipping.'),
  item(name: 'Lobster Roll', price: 15.99, information: 'A New England favorite with lobster meat in a buttered roll.')
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