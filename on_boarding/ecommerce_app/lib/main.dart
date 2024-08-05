import 'package:flutter/material.dart';
import 'package:task6/features/product/presention/homes/home.dart';
import 'features/product/presention/detail/detail.dart';
import 'features/product/presention/addProduct/addProduct.dart';
import 'features/product/presention/search/search.dart';

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
