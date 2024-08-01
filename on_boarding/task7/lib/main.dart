import 'package:flutter/material.dart';
import 'package:task6/homes/home.dart';
import './detail//detail.dart';
import './addProduct//addProduct.dart';
import './search/search.dart';

// import 'package:task6/homes/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/detail': (context) => Detail(),
      '/add': (context) => AddProduct(),
      '/search': (context) => Searchproduct()
    },
    home: Scaffold(
      body: Home(),
    ),
  ));
}
