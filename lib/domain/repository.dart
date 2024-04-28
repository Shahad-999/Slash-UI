import 'package:slash/domain/models/product.dart';
import 'package:slash/domain/models/product_details.dart';
import 'package:slash/utils/response.dart';

abstract class ProductsRepository {
  Future<Response<List<Product>>> getProducts({required int page});

  Future<Response<ProductDetails>> getProductDetails({required int id});
}
