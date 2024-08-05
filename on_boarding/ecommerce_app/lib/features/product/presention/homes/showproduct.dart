

import 'package:flutter/material.dart';
import 'package:task6/features/product/presention/homes/shopingcard.dart';
// import '../../Shared/ShopingCard.dart';

class ShowProduct extends StatelessWidget {
  const ShowProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          shopingcard(
            assetPath: 'assets/image.jpg',
            name: 'Derby Shoes',
            price: 99.99,
            rating: 4,
            description: "men's shoe",
            // onTap: () {
            //   print('');
            // },
            // Description: 'Great',
          ),
          shopingcard(
            assetPath: 'assets/image.jpg',
            name: 'Derby Shoes',
            price: 149.99,
            rating: 4,
            description: "men's shoe",
          ),
          shopingcard(
            assetPath: 'assets/image.jpg',
            name: 'Derby Shoes',
            price: 99.99,
            rating: 4,
            description: "men's shoe",
          ),
        ],
      ),
    );
  }
}
