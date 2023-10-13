import 'categories.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'login_page.dart';
import 'reviews.dart';

void main()=>runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        /*'/': (context) =>  const Loading(),*/
        /*'/': (context) =>  MyApp(),*/
        '/': (context) =>  const ReviewInputForm(),
        /*'/categories': (context) => const Categories()*/
    },
  )
);