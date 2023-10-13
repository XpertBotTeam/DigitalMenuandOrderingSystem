import 'package:flutter/material.dart';
import '../classes/item.dart';

class BurgersPage extends StatelessWidget {
  BurgersPage({super.key});

  List<item> burgers = [
  item(name: 'Classic Hamburger', price: 9.99, information: 'A timeless classic with a juicy beef patty and your favorite toppings.'),
  item(name: 'CheeseBurger', price: 10.99, information: 'A classic burger with your choice of cheese, served with all the fixings.'),
  item(name: 'Bacon CheeseBurger', price: 11.99, information: 'A cheeseburger topped with crispy bacon for extra flavor.'),
  item(name: 'Veggie Burger', price: 9.49, information: 'A delicious plant-based patty served with fresh vegetables and condiments.'),
  item(name: 'Turkey Burger', price: 10.99, information: 'A healthier option with a turkey patty and a variety of toppings.'),
  item(name: 'Chicken Burger', price: 11.49, information: 'A tasty chicken patty with your choice of toppings and sauces.'),
  item(name: 'BBQ Burger', price: 11.99, information: 'A burger smothered in BBQ sauce and served with coleslaw.'),
  item(name: 'Mushroom Swiss Burger', price: 10.99, information: 'A burger topped with sautéed mushrooms and Swiss cheese.'),
  item(name: 'Guacamole Burger', price: 12.49, information: 'A burger topped with creamy guacamole and fresh salsa.'),
  item(name: 'Hawaiian Burger', price: 12.99, information: 'A tropical twist with pineapple and teriyaki sauce.'),
  item(name: 'Black Bean Burger', price: 9.99, information: 'A flavorful vegetarian option with a black bean patty.'),
  item(name: 'Jalapeno Burger', price: 11.49, information: 'Spicy and bold with jalapeños and pepper jack cheese.'),
  item(name: 'Teriyaki Burger', price: 12.49, information: 'A burger with sweet teriyaki glaze and grilled pineapple.'),
  item(name: 'Pesto Burger', price: 11.99, information: 'A burger topped with fresh basil pesto and sun-dried tomatoes.'),
  item(name: 'Buffalo Chicken Burger', price: 12.99, information: 'A spicy twist with buffalo sauce and blue cheese dressing.'),
  item(name: 'Chili Burger', price: 11.49, information: 'A hearty burger with chili, cheese, and diced onions.'),
  item(name: 'Portobello Mushroom Burger', price: 11.99, information: 'A burger topped with grilled portobello mushrooms and Swiss cheese.')

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