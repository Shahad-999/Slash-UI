import 'package:dio/dio.dart';
import 'package:slash/config/service_locator.dart';
import 'package:slash/data/datasources/remote/models/product_data_dto.dart';
import 'package:slash/data/datasources/remote/models/product_details_response_dto.dart';
import 'package:slash/data/datasources/remote/models/products_response_dto.dart';

class RemoteDataSource {
  final Dio _dio;

  RemoteDataSource() : _dio = getIt.get();

  Future<List<ProductData?>?> getProducts({required int page}) async {
    final response = await _dio.get(
      'https://slash-backend.onrender.com/product/',
      queryParameters: {'limit': 10, 'page': page},
    );
    return ProductsResponseDto.fromJson(response.data).data;
  }

  Future<ProductDetailsResponseDto?> getProductDetails(
      {required int id}) async {
    final response = await _dio.get(
      'https://slash-backend.onrender.com/product/$id',
    );
    return ProductDetailsResponseDto.fromJson(response.data);
  }
}
