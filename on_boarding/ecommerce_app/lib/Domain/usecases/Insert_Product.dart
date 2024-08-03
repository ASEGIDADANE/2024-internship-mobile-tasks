// add_product_usecase.dart


import '../entities/product.dart';
import '../repositories/Product_Repository.dart';

class AddProductUseCase {
  final ProductRepository productRepository;

  AddProductUseCase(this.productRepository);

  Future<void> execute(Product product) {
    return productRepository.addProduct(product);
  }
}