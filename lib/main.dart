import 'categories.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'login_page.dart';
import 'reviews.dart';
import 'register.dart';

void main()=>runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        /*'/': (context) =>  const Loading(), //loading page*/
        '/': (context) =>  MyApp(), //login main page
        /*'/': (context) =>  Categories() //categories page*/
        /*'/': (context) =>  const MyForm(), //registration page*/
        /*'/': (context) =>  const ReviewInputForm(), //review form page*/

    },
  )
);