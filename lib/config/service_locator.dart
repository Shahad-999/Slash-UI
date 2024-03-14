import 'package:get_it/get_it.dart';
import 'package:slash/data/product_repository_imp.dart';
import 'package:slash/domain/repository.dart';

final GetIt getIt = GetIt.instance;

setup() {
  getIt.registerSingleton<ProductsRepository>(ProductRepositoryImp());
}
