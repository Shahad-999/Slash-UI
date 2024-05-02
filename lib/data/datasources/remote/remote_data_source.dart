import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash/data/datasources/remote/models/product_data_dto.dart';
import 'package:slash/data/datasources/remote/models/product_details_response_dto.dart';
import 'package:slash/data/datasources/remote/models/products_response_dto.dart';

final dioProvider = Provider<Dio>((ref) => Dio());
final remoteDataSourceProvider = Provider<RemoteDataSource>((ref) => RemoteDataSource( ref.read(dioProvider)));

class RemoteDataSource {
  final Dio _dio;

  RemoteDataSource(this._dio);

  static const defaultLimit = 10;
  Future<List<ProductData>?> getProducts(
      {required int page, int? limit}) async {
    final response = await _dio.get(
      'https://slash-backend.onrender.com/product/',
      queryParameters: {'limit': limit ?? defaultLimit, 'page': page},
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
