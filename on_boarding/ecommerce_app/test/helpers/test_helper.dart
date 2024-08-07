
// import 'package:http/http.dart' as http;
// import 'package:mockito/annotations.dart';
// import 'package:task6/core/network/network_info.dart';
// import 'package:task6/features/product/Domain/repositories/Product_Repository.dart';
// import 'package:task6/features/product/data/data_sources/remote_data_source.dart';

// @GenerateMocks([ProductRepository,
// ProductRemoteDataSource,
// NetworkInfo],
//     customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
// void main() {}
// import 'package:e_commerce_app/core/network/network_info.dart';
// import 'package:e_commerce_app/features/product/data/data_sources/remote/remote_data_source.dart';
// import 'package:e_commerce_app/features/product/domain/repositories/product_repository.dart';
// import 'package:e_commerce_app/features/product/domain/usecases/get_product.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task6/core/network/network_info.dart';
import 'package:task6/features/product/Domain/repositories/Product_Repository.dart';
import 'package:task6/features/product/Domain/usecases/Get_Product.dart';
import 'package:task6/features/product/data/data_sources/remote_data_source.dart';

@GenerateMocks(
  [
    ProductRepository,
    GetProductUseCase,
    ProductRemoteDataSource,
    NetworkInfo,
    InternetConnectionChecker,
    SharedPreferences,
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}