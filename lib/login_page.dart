import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'register.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Ordering Menu'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('Assets/food.jpg'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password', ),
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your first password';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        handleLogin(context);
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(60, 30)),
                        backgroundColor: MaterialStateProperty.all(Colors.yellow[800]),
                      ),
                      child: const Text('Log In'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyForm()));
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(60, 30)),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: const Text('Sign Up'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> loginUser(String email, String password) async {
    const url = 'https://dmos.xpertbotacademy.online/api/login';
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'email': email, 'password': password}),
    );
    if(response.statusCode == 200)
      {
        final data = jsonDecode(response.body);
        final token = data['token'];
        return token;
      }else {
      throw Exception('Failed to login: ${response.statusCode}');
    }
  }

  void handleLogin(BuildContext context) async{
    final email = emailController.text;
    final password = passwordController.text;

    try{
      final token = await loginUser(email, password);
      if(token != null) {
        Navigator.pushNamed(context, '/categories');
      }
    }catch(e){
      print('login failed: $e');
    }
  }

}