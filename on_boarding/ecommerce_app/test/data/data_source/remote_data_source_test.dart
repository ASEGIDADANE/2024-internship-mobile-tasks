

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:task6/core/constants/constants.dart';
import 'package:task6/core/errors/exception.dart';
import 'package:task6/features/product/data/data_sources/remote_data_source.dart';
import 'package:task6/features/product/data/models/Product_model.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';
import 'package:http/http.dart' as http;

void main() {
  late MockHttpClient mockHttpClient;
  late ProductRemoteDataSourceImpl productRemoteDataSourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    productRemoteDataSourceImpl =
        ProductRemoteDataSourceImpl(client: mockHttpClient);
  });

  const testId = '6672776eb905525c145fe0bb';

  group('get Product Detail', () {
    test('should return Product model when the response code is 200', () async {
      //arrange
      when(mockHttpClient.get(Uri.parse(Urls.getProduct(testId)))).thenAnswer(
          (_) async => http.Response(
              readJson('helpers/dummy_data/dummy_product_response.json'), 200));

      //act
      final result = await productRemoteDataSourceImpl.getProductById(testId);

      //assert
      expect(result, isA<ProductModel>());
    });

    test(
      'should throw a server exception when the response code is 404 or other',
      () async {
        //arrange
        when(
          mockHttpClient.get(Uri.parse(Urls.getProduct(testId))),
        ).thenAnswer((_) async => http.Response('Not found', 404));

        //act
        final result = productRemoteDataSourceImpl.getProductById(testId);

        //assert
        expect(result, throwsA(isA<ServerException>()));
      },
    );
  });
}