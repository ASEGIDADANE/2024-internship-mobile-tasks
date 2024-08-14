class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
 

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          price == other.price &&
          imageUrl == other.imageUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      imageUrl.hashCode;

  @override
  String toString() {
    return 'Product{id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl}';
  }

  void fold(Null Function(dynamic failure) param0, Null Function(dynamic data) param1) {}
}
// import 'package:equatable/equatable.dart';

// class Product extends Equatable {
//   final String productid;
//   final String name;
//   final String description;
//   final int price;
//   final String imageUrl;
//   const Product(
//       {required this.productid,
//       required this.name,
//       required this.description,
//       required this.price,
//       required this.image, required int idUrl});

//   @override
//   // TODO: implement props
//   List<Object?> get props {
//     return [productid, name, description, price, imageUrl];
//   }
// }