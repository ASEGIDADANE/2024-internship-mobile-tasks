// delete_product_usecase.dart


import '../repositories/Product_Repository.dart';

class DeleteProductUseCase {
  final ProductRepository productRepository;

  DeleteProductUseCase(this.productRepository);

  Future<void> execute(int productId) {
    return productRepository.deleteProduct(productId);
  }
}