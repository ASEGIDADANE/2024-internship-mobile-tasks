
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:task6/core/errors/exception.dart';
// import 'package:task6/core/errors/failures.dart';
// import 'package:task6/core/network/network_info.dart';
// import 'package:task6/features/product/data/data_sources/remote_data_source.dart';
// import 'package:task6/features/product/data/models/Product_model.dart';
// import 'package:task6/features/product/data/repositories/product_repository_impl.dart';

// // Mocks
// class MockProductRemoteDataSource extends Mock implements ProductRemoteDataSource {}
// class MockNetworkInfo extends Mock implements NetworkInfo {}

// void main() {
//   late ProductRepositoryImpl repository;
//   late MockProductRemoteDataSource mockProductRemoteDataSource;
//   late MockNetworkInfo mockNetworkInfo;

//   setUp(() {
//     mockProductRemoteDataSource = MockProductRemoteDataSource();
//     mockNetworkInfo = MockNetworkInfo();
//     repository = ProductRepositoryImpl(
//       productRemoteDataSource: mockProductRemoteDataSource,
//       remoteDataSource: mockProductRemoteDataSource,
//       networkInfo: mockNetworkInfo,
//     );
//   });

//   group('getProduct', () {
//     const tProductId = '123';
//     final tProduct = ProductModel(
//       id: 1,
//       name: 'Test Product',
//       description: 'Test Description',
//       price: 123,
//       imageUrl: 'test_image_url',
//     );

//   test('should return Product when the call to remote data source is successful', () async {
//   // Arrange
//   when(mockProductRemoteDataSource.getProductById(tProductId))
//       .thenAnswer((_) async => tProduct);

//   // Act
//   final result = await repository.getProduct(tProductId);

//   // Assert
//   expect(result, equals(Right(tProduct.toEntity())));
//   verify(mockProductRemoteDataSource.getProductById(tProductId));
//   verifyNoMoreInteractions(mockProductRemoteDataSource);
// });

//     test('should return ServerFailure when the call to remote data source fails with ServerException', () async {
//       // Arrange
//       when(mockProductRemoteDataSource.getProductById(tProductId))
//           .thenThrow(ServerException());

//       // Act
//       final result = await repository.getProduct(tProductId);

//       // Assert
//       expect(result, equals(Left(ServerFailure('An error has occurred'))));
//       verify(mockProductRemoteDataSource.getProductById(tProductId));
//       verifyNoMoreInteractions(mockProductRemoteDataSource);
//     });

//     test('should return NetworkFailure when the call to remote data source fails with SocketException', () async {
//       // Arrange
//       when(mockProductRemoteDataSource.getProductById(tProductId))
//           .thenThrow(SocketException(''));

//       // Act
//       final result = await repository.getProduct(tProductId);

//       // Assert
//       expect(result, equals(Left(NetworkFailure('Failed to connect to the network'))));
//       verify(mockProductRemoteDataSource.getProductById(tProductId));
//       verifyNoMoreInteractions(mockProductRemoteDataSource);
//     });
//   });
// }




import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task6/core/errors/exception.dart';

import 'package:task6/core/errors/failures.dart';
import 'package:task6/features/product/Domain/entities/product.dart';
import 'package:task6/features/product/data/data_sources/remote_data_source.dart';
import 'package:task6/features/product/data/models/product_model.dart';
import 'package:task6/features/product/data/repositories/product_repository_impl.dart';

class MockProductRemoteDataSource extends Mock implements ProductRemoteDataSource {}

void main() {
  late MockProductRemoteDataSource mockProductRemoteDataSource;
  late ProductRepositoryImpl productRepositoryImpl;

  setUp(() {
    mockProductRemoteDataSource = MockProductRemoteDataSource();
    productRepositoryImpl = ProductRepositoryImpl(productRemoteDataSource: mockProductRemoteDataSource, networkInfo: null, remoteDataSource: null, );
  });

  final testProductModel = ProductModel(
    id: 12,
    name: 'Anime website',
    description: 'Explore anime characters.',
    price: 123,
    imageUrl: 'https://res.cloudinary.com/g5-mobile-track/image/upload/v1718777132/images/zxjhzrflkvsjutgbmr0f.jpg',
  );

  final testProductEntity = Product(
    id: 12,
    name: 'Anime website',
    description: 'Explore anime characters.',
    price: 123,
    imageUrl: 'https://res.cloudinary.com/g5-mobile-track/image/upload/v1718777132/images/zxjhzrflkvsjutgbmr0f.jpg',
  );

  const testProductId = '6672752cbd218790438efdb0';

  group('Repository Implementation Group', () {
    test('Repository Implementation Test', () async {
      // arrange
      when(mockProductRemoteDataSource.getProductById(testProductId)).thenAnswer((_) async => testProductModel);

      // act
      final result = await productRepositoryImpl.getProduct(testProductId);

      // assert
      expect(result, equals(Right(testProductEntity)));
    });

    test('should return server failure when a call to data source is unsuccessful', () async {
      // arrange
      when(mockProductRemoteDataSource.getProductById(testProductId)).thenThrow(ServerException());

      // act
      final result = await productRepositoryImpl.getProduct(testProductId);

      // assert
      expect(result, equals(Left(ServerFailure('An error has occurred'))));
    });

    test('should return connection failure when the device has no internet', () async {
      // arrange
      when(mockProductRemoteDataSource.getProductById(testProductId)).thenThrow(SocketException('Failed to connect to the network'));

      // act
      final result = await productRepositoryImpl.getProduct(testProductId);

      // assert
      expect(result, equals(Left(NetworkFailure('Failed to connect to the network'))));
    });
  });
}