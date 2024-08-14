

// import '../../../../core/errors/failures.dart';
import '../entities/product.dart';
import '../repositories/Product_Repository.dart';


class GetAllProductUseCase {
  final ProductRepository productRepository;
  GetAllProductUseCase(this.productRepository);

  Future<List<Product>> execute() async {
    return await productRepository.getAllProducts();
  }
}