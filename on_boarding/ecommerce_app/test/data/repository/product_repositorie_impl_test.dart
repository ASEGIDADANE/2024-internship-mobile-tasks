
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:task6/core/errors/exception.dart';
import 'package:task6/core/errors/failures.dart';
import 'package:task6/core/network/network_info.dart';
import 'package:task6/features/product/data/data_sources/remote_data_source.dart';
import 'package:task6/features/product/data/models/Product_model.dart';
import 'package:task6/features/product/data/repositories/product_repository_impl.dart';

// Mocks
class MockProductRemoteDataSource extends Mock implements ProductRemoteDataSource {}
class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late ProductRepositoryImpl repository;
  late MockProductRemoteDataSource mockProductRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockProductRemoteDataSource = MockProductRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = ProductRepositoryImpl(
      productRemoteDataSource: mockProductRemoteDataSource,
      remoteDataSource: mockProductRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('getProduct', () {
    final tProductId = '123';
    final tProduct = ProductModel(
      id: 1,
      name: 'Test Product',
      description: 'Test Description',
      price: 123,
      imageUrl: 'test_image_url',
    );

    test('should return Product when the call to remote data source is successful', () async {
      // Arrange
      when(mockProductRemoteDataSource.getProductById(tProductId))
          .thenAnswer((_) async => tProduct);

      // Act
      final result = await repository.getProduct(tProductId);

      // Assert
      expect(result, equals(Right(tProduct.toEntity())));
      verify(mockProductRemoteDataSource.getProductById(tProductId));
      verifyNoMoreInteractions(mockProductRemoteDataSource);
    });

    test('should return ServerFailure when the call to remote data source fails with ServerException', () async {
      // Arrange
      when(mockProductRemoteDataSource.getProductById(tProductId))
          .thenThrow(ServerException());

      // Act
      final result = await repository.getProduct(tProductId);

      // Assert
      expect(result, equals(Left(ServerFailure('An error has occurred'))));
      verify(mockProductRemoteDataSource.getProductById(tProductId));
      verifyNoMoreInteractions(mockProductRemoteDataSource);
    });

    test('should return NetworkFailure when the call to remote data source fails with SocketException', () async {
      // Arrange
      when(mockProductRemoteDataSource.getProductById(tProductId))
          .thenThrow(SocketException(''));

      // Act
      final result = await repository.getProduct(tProductId);

      // Assert
      expect(result, equals(Left(NetworkFailure('Failed to connect to the network'))));
      verify(mockProductRemoteDataSource.getProductById(tProductId));
      verifyNoMoreInteractions(mockProductRemoteDataSource);
    });
  });
}
