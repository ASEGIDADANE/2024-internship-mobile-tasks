// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:task6/features/product/domain/entities/product.dart';
// import 'package:task6/features/product/domain/repositories/Product_Repository.dart';
// import 'package:task6/features/product/domain/usecases/get_product.dart';

// import '../../helpers/test_helper.mocks.dart';

// void main() {
//   late MockProductRepository mockProductRepository;
//   late GetProductUseCase getProductRepository;

//   setUp(() {
//     mockProductRepository = MockProductRepository();
//     getProductRepository = GetProductUseCase(mockProductRepository as ProductRepository);
//   });

//   final productDetails = Product(
//     productId: '1',
//     name: 'shoe',
//     description: 'leather shoe',
//     price: 200,
//     imageUrl: '',
//     id: 22,
//   );
//   const productid = '1';

//   test('should get product', () async {
//     when(mockProductRepository.getProductById(productid as int))
//         .thenAnswer((_) async => Right(productDetails));

//     final result = await getProductRepository.execute(productid as int);
    
//     expect(result, Right(productDetails));
//   });
// }
