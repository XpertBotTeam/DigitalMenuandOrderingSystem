import 'package:flutter/material.dart';
class RegistrationPage extends StatelessWidget{
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,15),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,15),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,15),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,15),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                  ),
                ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0,20,0,15),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Phone'),
                ),
              ),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }

}