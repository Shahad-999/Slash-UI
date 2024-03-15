import 'package:slash/config/service_locator.dart';
import 'package:slash/data/datasources/remote/remote_data_source.dart';
import 'package:slash/domain/models/product.dart';
import 'package:slash/domain/models/product_details.dart';
import 'package:slash/domain/repository.dart';
import 'package:slash/utils/error_status.dart';
import 'package:slash/utils/result.dart';

class ProductRepositoryImp extends ProductsRepository {

  final RemoteDataSource _remoteDataSource;

  ProductRepositoryImp(): _remoteDataSource =getIt.get();

  @override
  Future<Result<List<Product>>> getProducts({required int page})async {
    try {
      final result = await _remoteDataSource.getProducts(page: page);
      if (result != null) {
        return Result(data: result.map((e) => e?.toModel())
            .whereType<Product>()
            .toList());
      } else {
        return Result(errorStatus: ErrorStatus());
      }
    } catch (e) {
      return Result(errorStatus: ErrorStatus());
    }
  }

  @override
  Future<Result<ProductDetails>> getProductDetails({required int id})async {
    try {
      final result = await _remoteDataSource.getProductDetails(id: id);
      if (result != null) {
        return Result(data: result.toModel());
      } else {
        return Result(errorStatus: ErrorStatus());
      }
    } catch (e) {
      return Result(errorStatus: ErrorStatus());
    }
  }

}
