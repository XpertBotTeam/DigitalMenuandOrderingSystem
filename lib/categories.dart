import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'classes/category.dart';
import 'categories/desserts.dart';
import 'categories/burgers.dart';
import 'categories/appetizers.dart';
import 'categories/pizza.dart';
import 'categories/milkshakes.dart';
import 'categories/plates.dart';
import 'categories/sandwiches.dart';
import 'categories/softdrinks.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  final List<Category> foodCategories = [
    Category(name:'Desserts', image:'desserts.jpg', urlPage:'categories/desserts.dart'),
    Category(name: 'Burgers', image: 'burgers.png', urlPage:'categories/burgers.dart'),
    Category(name: 'Appetizers', image: 'appetizers.png', urlPage:'categories/appetizers.dart'),
    Category(name: 'Milkshakes', image: 'milkshakes.png', urlPage:'categories/milkshakes.dart'),
    Category(name: 'Pizza', image: 'pizza.png', urlPage:'categories/pizza.dart'),
    Category(name: 'Plates', image: 'plates.png', urlPage:'categories/plates.dart'),
    Category(name: 'Sandwiches', image: 'sandwiches.png', urlPage:'categories/sandwiches.dart'),
    Category(name: 'Soft Drinks', image: 'softdrinks.png', urlPage:'categories/softdrinks.dart'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('CATEGORIES'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: foodCategories.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  // Navigate to the specified page when the ListTile is pressed
                  switch (foodCategories[index].urlPage) {
                    case 'categories/desserts.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DessertsPage(),
                      ));
                      break;
                    case 'categories/burgers.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BurgersPage(),
                      ));
                      break;
                    case 'categories/appetizers.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AppetizersPage(),
                      ));
                      break;
                    case 'categories/milkshakes.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MilkshakesPage(),
                      ));
                      break;
                    case 'categories/pizza.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PizzaPage(),
                      ));
                      break;
                    case 'categories/plates.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PlatesPage(),
                      ));
                      break;
                    case 'categories/sandwiches.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SandwichesPage(),
                      ));
                      break;
                    case 'categories/softdrinks.dart':
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SoftDrinksPage(),
                      ));
                      break;
                  // Add other cases for different categories
                  }
                },
                title: Text(
                  foodCategories[index].name,
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('Assets/${foodCategories[index].image}'),
                ),
              ),
            ),
          );
        },

      )
    );
  }
}