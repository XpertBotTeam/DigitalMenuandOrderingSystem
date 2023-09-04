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
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'First Name'),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'Last Name'),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'Email'),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'Phone'),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'Password'),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'Address'),
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

  if (response.statusCode == 200) {
    // Request was successful
    print('Data sent successfully');
  } else {
    // Request failed
    print('Failed to send data. Status code: ${response.statusCode}');
  }
}