import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyForm extends StatefulWidget {
  const MyForm({super.key});
  @override
  _MyFormState createState() => _MyFormState();
}

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  class _MyFormState extends State<MyForm> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Registration'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'First Name',
                            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.grey[200],
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            //suffixIcon: Icon(Icons.clear),
                            contentPadding: const EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                        ),
                        controller: _fnameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your first name';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),

                            labelText: 'Last Name',
                            prefixIcon: const Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.grey[200],
                            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                            contentPadding: const EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                        ),
                        ),
                        controller: _lnameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your last name';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            filled: true,
                            fillColor: Colors.grey[200],
                            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(Icons.email),
                            focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10.0),
                            ),
                            contentPadding: const EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your email';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            labelText: 'Phone',
                            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: const Icon(Icons.phone),
                            contentPadding: const EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        controller: _phoneController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your phone number';
                          }
                          return null;
                        },

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            prefixIcon: const Icon(Icons.password_rounded),
                            contentPadding: const EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        obscureText: true,
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your password';
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Address',
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            fillColor: Colors.grey[200],
                            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(Icons.location_on),
                            contentPadding: const EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        controller: _addressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your address';
                          }
                          return null;
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitForm();
                        }
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            const Size(200, 40)),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: const Text('Sign Up'),

                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      );
  }
}
void _submitForm() async {
  final fName = _fnameController.text;
  final lname = _lnameController.text;
  final email = _emailController.text;
  final phone = _phoneController.text;
  final password = _passwordController.text;
  final address = _addressController.text;
  const url = 'https://dmos.xpertbotacademy.online/api/register';
  final response = await http.post(Uri.parse(url),
    body: {
      'Fname': fName,
      'Lname': lname,
      'email': email,
      'password': password,
      'phoneNb' : phone,
      'address' : address,
    },
  );


  print('-------------------------${response.statusCode}---------------------');

  if (response.statusCode == 200) {
    // Request was successful
    print('Data sent successfully');
  } else {
    // Request failed
    print('Failed to send data. Status code: ${response.statusCode}');
  }
}