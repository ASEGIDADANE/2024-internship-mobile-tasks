
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:task6/Domain/repositories/Product_Repository.dart';

@GenerateMocks([ProductRepository],
    customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main() {}