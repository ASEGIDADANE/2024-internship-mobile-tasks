
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'features/product/Domain/usecases/Delete_Product.dart';
import 'features/product/Domain/usecases/Get_Product.dart';
import 'features/product/Domain/usecases/Insert_Product.dart';
import 'features/product/Domain/usecases/Update_Product.dart';
import 'features/product/data/data_sources/remote_data_source.dart';

import 'features/product/data/repositories/product_repository_impl.dart';
import 'features/product/domain/repositories/product_repository.dart';
import 'features/product/domain/usecases/get_all_products_usecase.dart';
import 'features/product/presention/bloc/product_bloc.dart';


final locator = GetIt.instance;

Future<void> setupLocator() async {
  // bloc
  locator.registerFactory(
      () => ProductBloc(locator(), locator(), locator(), locator(), locator()));

  // usecase
  locator.registerLazySingleton(() => GetProductUseCase(locator()));

  locator.registerLazySingleton(() => GetAllProductUseCase(locator()));

  locator.registerLazySingleton(() => DeleteProductUseCase(locator()));

  locator.registerLazySingleton(() => UpdateProductUseCase(locator()));

  locator.registerLazySingleton(() => AddProductUseCase(locator()));

  // repository
  locator.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(productRemoteDataSource: locator(), networkInfo: null, remoteDataSource: null),
  );

  // data source
  locator.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(
      client: locator(),
    ),
  );

  // external
  final sharedPreferences = await SharedPreferences.getInstance();

  locator.registerLazySingleton(() => sharedPreferences);
  locator.registerLazySingleton(() => http.Client());
}