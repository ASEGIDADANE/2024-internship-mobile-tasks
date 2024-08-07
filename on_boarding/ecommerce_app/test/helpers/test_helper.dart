
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:task6/core/network/network_info.dart';
import 'package:task6/features/product/Domain/repositories/Product_Repository.dart';
import 'package:task6/features/product/data/data_sources/remote_data_source.dart';

@GenerateMocks([ProductRepository,
ProductRemoteDataSource,
NetworkInfo],
    customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main() {}