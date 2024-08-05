// update_product_usecase.dart


import '../entities/product.dart';
import '../repositories/Product_Repository.dart';

class UpdateProductUseCase {
  final ProductRepository productRepository;

  UpdateProductUseCase(this.productRepository);

  Future<void> execute(Product product) {
    return productRepository.updateProduct(product);
  }
}