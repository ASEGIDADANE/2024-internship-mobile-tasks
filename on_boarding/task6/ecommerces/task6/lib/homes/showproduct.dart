// import 'package:flutter/material.dart';
// import 'package:task6/homes/shopingcard.dart';
// // import 'package:task6/homes/shopingcard.dart';

// class ShowProduct extends StatelessWidget {
//   const ShowProduct({required Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView(
//         children: [
//           buildShoppingCard(context, 'assets/boots.jpg', 'Product Name', 99.99, 5, 'Great'),
//           buildShoppingCard(context, 'assets/boots.jpg', 'Another Product', 149.99, 4, 'Excellent'),
//           buildShoppingCard(context, 'assets/boots.jpg', 'Product Name', 99.99, 5, 'Great'),
//         ],
//       ),
//     );
//   }

//   Widget buildShoppingCard(BuildContext context, String assetPath, String name, double price, int rating, String description) {
//     return GestureDetector(
//       onTap: () {
//         navigateToProductDetails(context, name, description);
//       },
//       child: shopingcard(
//         assetPath: assetPath,
//         name: name,
//         price: price,
//         rating: rating,
//         description: description, onTap: () {  }, Description: '',
//       ),
//     );
//   }

//   void navigateToProductDetails(BuildContext context, String productName, String productDescription) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProductDetailsPage(productName: productName, productDescription: productDescription),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:task6/homes/shopingcard.dart';
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
