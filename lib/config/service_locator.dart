import 'package:get_it/get_it.dart';
import 'package:slash/data/datasources/remote/remote_data_source.dart';
import 'package:slash/data/product_repository_imp.dart';
import 'package:slash/domain/repository.dart';
import 'package:dio/dio.dart';

final GetIt getIt = GetIt.instance;

setup() {
  getIt.registerSingleton(Dio()..interceptors.addAll([LogInterceptor()]));
  getIt.registerSingleton<RemoteDataSource>(RemoteDataSource(getIt.get()));
  getIt.registerSingleton<ProductsRepository>(ProductRepositoryImp(getIt.get()));
}
