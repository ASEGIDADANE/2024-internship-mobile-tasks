// import 'package:ecommerce/entities/product.dart';

import '../entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getAllProducts();
  
  Future<Product> getProductById(int id);

  Future<void> addProduct(Product product);

  Future<void> updateProduct(Product product);

  Future<void> deleteProduct(int id);
}