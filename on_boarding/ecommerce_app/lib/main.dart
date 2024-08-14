import 'package:flutter/material.dart';
import 'package:task6/features/product/presention/screen/homes/home.dart';
import 'features/product/presention/screen/detail/detail.dart';
import 'features/product/presention/screen/addProduct/addProduct.dart';
import 'features/product/presention/screen/search/search.dart';

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
