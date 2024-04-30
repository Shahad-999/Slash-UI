import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:slash/data/datasources/remote/models/product_data_dto.dart';
import 'package:slash/data/datasources/remote/models/products_response_dto.dart';
import 'package:slash/data/datasources/remote/remote_data_source.dart';
import '../../../load_file.dart';
import '../../../mocks/mocks.mocks.dart';

void main() {
  late RemoteDataSource remoteDataSource;
  late Dio mockDio;
  late dynamic productsJson;
  late List<ProductData>? productsModel;
  setUp(() {
    mockDio = MockDio();
    remoteDataSource = RemoteDataSource(mockDio);
  });
  group('Input Validation', () {
    test('Test the function with an invalid page number (negative value)',
        () async {
      //givin
      const page = -1;
      const limit = 10;
      //when
      when(mockDio.get(
        'https://slash-backend.onrender.com/product/',
        queryParameters: {'limit': limit, 'page': page},
      )).thenAnswer((realInvocation) async => Response(
          data: {"statusCode": 500, "message": "Internal server error"},
          requestOptions: RequestOptions(
            path:
                'https://slash-backend.onrender.com/product?limit=$limit&page=$page',
          )));

      // // Act
      final result = await remoteDataSource.getProducts(page: page);

      // // Assert
      expect(result, equals(null));
    });

    test('Test the function with an invalid limit  (negative value)', () async {
      //givin
      const page = 1;
      const limit = -10;
      //when
      when(mockDio.get(
        'https://slash-backend.onrender.com/product/',
        queryParameters: {'limit': limit, 'page': page},
      )).thenAnswer((realInvocation) async => Response(
          data: {"statusCode": 500, "message": "Internal server error"},
          requestOptions: RequestOptions(
            path:
                'https://slash-backend.onrender.com/product?limit=$limit&page=$page',
          )));

      // // Act
      final result =
          await remoteDataSource.getProducts(page: page, limit: limit);

      // // Assert
      expect(result, equals(null));
    });
  });

  group('Functionality', () {
    test('Test the function with a valid page number and default limit',
        () async {
      const page = 1;
      productsJson = jsonReader('products_page_one_ten_items.json');
      productsModel =
          ProductsResponseDto.fromJson(productsJson as Map<String, dynamic>)
              .data;
      //when
      when(mockDio.get(
        'https://slash-backend.onrender.com/product/',
        queryParameters: {'limit': RemoteDataSource.defaultLimit, 'page': page},
      )).thenAnswer((realInvocation) async => Response(
          data: productsJson,
          requestOptions: RequestOptions(
            path:
                'https://slash-backend.onrender.com/product?limit=${RemoteDataSource.defaultLimit}&page=$page',
          )));

      // // Act
      final result = await remoteDataSource.getProducts(page: page);

      // // Assert
      expect(result, isA<List<ProductData>>());
      expect(result, equals(productsModel));
      expect(result?.length, equals(RemoteDataSource.defaultLimit));
    });
    test('Test the function with a valid page number and a custom limit',
        () async {
      const page = 1;
      const limit = 5;
      productsJson = jsonReader('products_page_one_five_items.json');
      productsModel =
          ProductsResponseDto.fromJson(productsJson as Map<String, dynamic>)
              .data;
      //when
      when(mockDio.get(
        'https://slash-backend.onrender.com/product/',
        queryParameters: {'limit': limit, 'page': page},
      )).thenAnswer((realInvocation) async => Response(
          data: productsJson,
          requestOptions: RequestOptions(
            path:
                'https://slash-backend.onrender.com/product?limit=$limit&page=$page',
          )));

      // // Act
      final result =
          await remoteDataSource.getProducts(page: page, limit: limit);

      // // Assert
      expect(result, isA<List<ProductData>>());
      expect(result, equals(productsModel));
      expect(result?.length, equals(limit));
    });
    test('Test the function with a page two and a default limit', () async {
      const page = 2;
      productsJson = jsonReader('products_page_two_ten_items.json');
      productsModel =
          ProductsResponseDto.fromJson(productsJson as Map<String, dynamic>)
              .data;
      //when
      when(mockDio.get(
        'https://slash-backend.onrender.com/product/',
        queryParameters: {'limit': RemoteDataSource.defaultLimit, 'page': page},
      )).thenAnswer((realInvocation) async => Response(
          data: productsJson,
          requestOptions: RequestOptions(
            path:
                'https://slash-backend.onrender.com/product?limit=${RemoteDataSource.defaultLimit}&page=$page',
          )));

      // // Act
      final result = await remoteDataSource.getProducts(page: page);

      // // Assert
      expect(result, isA<List<ProductData>>());
      expect(result, equals(productsModel));
      expect(result?.length, equals(RemoteDataSource.defaultLimit));
    });
  });

}
