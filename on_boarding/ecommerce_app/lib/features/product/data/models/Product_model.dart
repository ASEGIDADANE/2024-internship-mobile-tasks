
// import '../../Domain/entity/ecommerce_entity.dart';

import '../../domain/entities/product.dart';

class ProductModel extends Product {
  
  ProductModel({
    required int id, // Change id type from String to int
    required String name,
    required String description,
    required String imageUrl,
    required double price,
  }) : super(
    id: id,
    name: name,
    description: description,
    imageUrl: imageUrl,
    price: price,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['disc'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'imageUrl': imageUrl,
    'price': price,
  };
}