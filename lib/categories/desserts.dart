import 'package:flutter/material.dart';
import '../classes/item.dart';

class DessertsPage extends StatelessWidget {
  DessertsPage({super.key});

  List<item> desserts = [
    item(name: 'Chocolate Cake'),
    item(name: 'Apple Pie'),
    item(name: 'Ice Cream Sundae'),
    item(name: 'Cheesecake'),
    item(name: 'Tiramisu'),
    item(name: 'Creme Brulee'),
    item(name: 'Fruit Tart'),
    item(name: 'Brownies'),
    item(name: 'Eclairs'),
    item(name: 'Panna Cotta'),
    item(name: 'Cannoli'),
    item(name: 'Red Velvet Cupcakes'),
    item(name: 'Baklava'),
    item(name: 'Mousse'),
    item(name: 'Lemon Bars'),
    item(name: 'Tres Leches Cake'),
    item(name: 'Macarons'),
    item(name: 'Key Lime Pie')
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