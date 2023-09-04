import 'categories.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
import 'login_page.dart';

void main()=>runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>  MyApp(),
        '/categories': (context) => const Categories()
    },
  )
);