import 'package:slash/domain/models/product.dart';
import 'package:slash/domain/models/product_details.dart';
import 'package:slash/utils/result.dart';

abstract class ProductsRepository {
  Future<Result<List<Product>>> getProducts({required int page});

  Future<Result<ProductDetails>> getProductDetails({required int id});
}
