import 'package:flutter/material.dart';
import 'package:task6/homes/showproduct.dart';
import 'package:task6/search/about_product.dart';
import './searchType.dart';


class Searchproduct extends StatelessWidget {
  const Searchproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // leading: const Icon(Icons.arrow_back),
            // title: const Text("Search Product")),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            title: const Text("Search Product")),

        body: Column(
          children: [Searchtype(), const ShowProduct(), const about_product()],
        ));
  }


}
