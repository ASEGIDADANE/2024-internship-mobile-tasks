import 'package:flutter/material.dart';
import 'package:task6/detail/button.dart';
import 'package:task6/detail/description.dart';
import 'package:task6/detail/detailcomponent.dart';
import 'package:task6/detail/sSzeRow.dart';


class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Product Details'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailComponent(
              path: 'assets/image.jpg',
              title: "men's shoe",
              description: 'Derby Leather.',
              price: 120.00,
              rating: 4.0,
              
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                height: 80,
                child: sizeRow(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Description(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: buttons(),
            ),
          ],
        ),
      ),
    );
  }
  
}