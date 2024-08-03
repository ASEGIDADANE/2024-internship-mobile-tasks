// get_product_usecase.dart


import '../entities/product.dart';
import '../repositories/Product_Repository.dart';

class GetProductUseCase {
  final ProductRepository productRepository;

  GetProductUseCase(this.productRepository);

  Future<Product> execute(int productId) {
    return productRepository.getProductById(productId);
  }
}