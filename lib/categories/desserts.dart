import 'package:flutter/material.dart';
import '../classes/item.dart';

class DessertsPage extends StatelessWidget {
  DessertsPage({super.key});

  List<item> desserts = [
  item(name: 'Chocolate Cake', price: 5.99, information: 'Rich chocolate cake with a fudge layer.'),
  item(name: 'Apple Pie', price: 4.49, information: 'Warm apple pie with a flaky crust.'),
  item(name: 'Ice Cream Sundae', price: 6.99, information: 'Classic ice cream sundae with your choice of toppings.'),
  item(name: 'Cheesecake', price: 7.99, information: 'Creamy cheesecake with a graham cracker crust.'),
  item(name: 'Tiramisu', price: 8.49, information: 'Italian dessert with layers of coffee-soaked ladyfingers and mascarpone.'),
  item(name: 'Creme Brulee', price: 7.49, information: 'Silky custard with a caramelized sugar top.'),
  item(name: 'Fruit Tart', price: 9.99, information: 'A tart filled with fresh seasonal fruits and pastry cream.'),
  item(name: 'Brownies', price: 5.49, information: 'Decadent chocolate brownies with or without nuts.'),
  item(name: 'Eclairs', price: 6.99, information: 'Delicate pastries filled with cream and topped with chocolate.'),
  item(name: 'Panna Cotta', price: 7.49, information: 'Italian dessert with sweetened cream and vanilla flavor.'),
  item(name: 'Cannoli', price: 6.99, information: 'Italian pastries filled with sweet ricotta cheese and chocolate chips.'),
  item(name: 'Red Velvet Cupcakes', price: 3.99, information: 'Red velvet cupcakes with cream cheese frosting.'),
  item(name: 'Baklava', price: 5.99, information: 'Sweet pastry made of layers of filo filled with chopped nuts and honey.'),
  item(name: 'Mousse', price: 6.49, information: 'Light and airy dessert with chocolate or fruit flavor.'),
  item(name: 'Lemon Bars', price: 4.99, information: 'Tangy lemon bars with a buttery crust.'),
  item(name: 'Tres Leches Cake', price: 7.99, information: 'Three-milk cake soaked in sweet milk and topped with whipped cream.'),
  item(name: 'Macarons', price: 9.99, information: 'Colorful and delicate French macarons with various flavors.'),
  item(name: 'Key Lime Pie', price: 6.99, information: 'Tart and sweet pie made with key lime juice in a graham cracker crust.')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desserts'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: desserts.length,
        itemBuilder: (context, index) {
          final item = desserts[index];
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