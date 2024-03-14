import 'package:slash/domain/models/product.dart';
import 'package:slash/utils/result.dart';

abstract class ProductsRepository {
  Future<Result<List<Product>>> getProducts({required int page});
}
