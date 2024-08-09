// import 'package:task6/features/product/domain/entities/product.dart';

// class ProductModel extends Product {
  
//   ProductModel ({
//     required int id,
//     required String name,
//     required String description,
//     required String imageUrl,
//     required double price,
//   }) : super(
//     id: id,
//     name: name,
//     description: description,
//     imageUrl: imageUrl,
//     price: price,
//   );

//   factory ProductModel.fromJson(Map<String, dynamic> json) {
//     return ProductModel(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//       imageUrl: json['imageUrl'],
//       price: json['price'].toDouble(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'description': description,
//       'imageUrl': imageUrl,
//       'price': price,
//     };
//   }

//   Product toEntity() {
//     return Product(
//       id: this.id,
//       name: this.name,
//       description: this.description,
//       imageUrl: this.imageUrl,
//       price: this.price,
//     );
//   }
// }
import 'package:task6/features/product/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.name,
    required super.description,
    required super.imageUrl,
    required super.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  Product toEntity() {
    return Product(
      id: this.id,
      name: this.name,
      description: this.description,
      imageUrl: this.imageUrl,
      price: this.price,
    );
  }
}


  // static Future<ProductModel> fromJsondata(decode) {}