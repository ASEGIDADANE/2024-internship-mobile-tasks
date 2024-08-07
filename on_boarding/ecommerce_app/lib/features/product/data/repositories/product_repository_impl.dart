
// import 'dart:io';
import 'package:dartz/dartz.dart';
// import '../../../../../test/data/repository/product_repositorie_impl_test.dart';
import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../data_sources/remote_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource, required networkInfo, required remoteDataSource});

  @override
  Future<Either<Failure, void>> deleteProduct(int id) {
    throw UnimplementedError();
  }

  Future<Either<Failure, Product>> getProduct(String id) async {
    try {
      final result = await productRemoteDataSource.getProductById(id);
      return Right(result.toEntity());
    } on ServerException {
      return Left(ServerFailure('An error has occurred'));
    } on SocketException {
      return Left(NetworkFailure('Failed to connect to the network'));
    }
  }

  Future<Either<Failure, void>> insertProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<void> addProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getAllProducts() {
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductById(int id) {
    throw UnimplementedError();
  }
}
