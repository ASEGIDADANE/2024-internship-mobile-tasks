import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task6/core/errors/exception.dart';
import 'package:task6/features/product/data/data_sources/local_data_source.dart';
import 'package:task6/features/product/data/models/Product_model.dart';

import '../../helpers/json_reader.dart';

// Ensure to import or define the correct mock class for SharedPreferences
class MockProductRepository extends Mock implements SharedPreferences {}

void main() {
  late MockProductRepository mockSharedPreferences;
  late LocalDataSourceImpl localDataSourceImpl;

  setUp(() {
    mockSharedPreferences = MockProductRepository();
    localDataSourceImpl =
        LocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
  });

  group('get last product', () {
    test('should return product model if there is one in shared preference', () async {
      // Arrange
      // Read JSON fixture and convert it to String
      final jsonString = readJson('helpers/fixtures/product_model.json');
      when(mockSharedPreferences.getString('')).thenReturn(jsonString);

      // Act
      final result = await localDataSourceImpl.getProduct();

      // Assert
      expect(result, isA<ProductModel>());
    });

    test('should return exception if the cache is empty', () async {
      // Arrange
      when(mockSharedPreferences.getString('')).thenReturn(null);

      // Act
      final call = localDataSourceImpl.getProduct;

      // Assert
      expect(() => call(), throwsA(isA<CacheException>()));
    });
  });
}
