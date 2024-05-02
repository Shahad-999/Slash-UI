import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:slash/data/datasources/remote/models/brand_dto.dart';
import 'package:slash/data/datasources/remote/models/product_data_dto.dart';
import 'package:slash/data/datasources/remote/models/product_images_dto.dart';
import 'package:slash/data/datasources/remote/models/product_sub_catagory_dto.dart';
import 'package:slash/data/datasources/remote/models/product_varaiation.dart';
import 'package:slash/data/datasources/remote/remote_data_source.dart';
import 'package:slash/data/product_repository_imp.dart';
import 'package:slash/domain/models/product.dart';
import 'package:slash/domain/models/product_variation.dart';
import 'package:slash/domain/repository.dart';
import 'package:slash/utils/error_status.dart';
import 'package:slash/utils/response.dart';

import '../mocks/mocks.mocks.dart';

void main() {
  late RemoteDataSource mockRemoteDataSource;
  late ProductsRepository repository;
  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = ProductRepositoryImp(mockRemoteDataSource);
  });

  group('Get Products test', () {
    test('should return response with data when internet is connect', () async {
      //givin
      final List<ProductData> mockProducts = [
        ProductData(
          id: 32,
          name: "St George icon",
          type: "OnDemand",
          description: "St George byzantine icon",
          subCategoryId: 8,
          brandId: 10,
          bostaSizeId: null,
          createdAt: "2023-09-25T16:14:13.091Z",
          updatedAt: "2023-09-25T16:14:13.091Z",
          deletedAt: null,
          productRating: 0,
          estimatedDaysPreparing: 11,
          brands: BrandDto(
            id: 10,
            brandType: "Local",
            brandName: "Artist Mina Maged",
            brandFacebookPageLink:
                "https://www.facebook.com/MinaMaged12345?mibextid=ZbWKwL",
            brandInstagramPageLink:
                "https://instagram.com/mina._.maged111?igshid=ZDdkNTZiNTM=",
            brandWebsiteLink: null,
            brandMobileNumber: "01096162068",
            brandEmailAddress: "minamagedref3atnazeer@gmail.com",
            taxIdNumber: null,
            brandDescription: "art selling",
            brandLogoImagePath:
                "https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32",
            brandStatusId: 2,
            brandStoreAddressId: null,
            brandCategoryId: 4,
            createdAt: "2023-09-22T12:48:34.756Z",
            updatedAt: "2023-12-01T00:00:01.889Z",
            brandRating: 0,
            daysLimitToReturn: 0,
            planId: null,
          ),
          productVariations: [
            ProductVariationsDto(
              id: 52,
              productId: 32,
              price: 900,
              quantity: 1,
              warehouseId: null,
              isDefault: true,
              createdAt: "2023-09-25T16:15:23.508Z",
              updatedAt: "2023-10-23T16:54:03.095Z",
              deletedAt: null,
              productVariationStatusId: 2,
              productVarientImages: const [
                ProductVarientImages(
                  id: 47,
                  imagePath:
                      "https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fproduct-variants%2F1695658521113IMG_20230624_173805.jpg?alt=media&token=99ad0718-5295-404d-8da7-6901e7c87ace",
                  createdAt: "2023-09-25T16:15:23.508Z",
                  updatedAt: "2023-09-25T16:15:23.508Z",
                ),
                ProductVarientImages(
                  id: 48,
                  imagePath:
                      "https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fproduct-variants%2F1695658521113wallpicture_230925_071310.png?alt=media&token=c943fef9-8fe6-4df3-8068-70eb039f912e",
                  createdAt: "2023-09-25T16:15:23.508Z",
                  updatedAt: "2023-09-25T16:15:23.508Z",
                ),
              ],
            ),
          ],
          subCategories: SubCategories(
            id: 8,
            name: "Drawings",
          ),
          notApprovedVariants: 0,
        ),
      ];

      final List<Product> expectedResult = [
        const Product(
          id: 32,
          name: "St George icon",
          brandId: 10,
          brandLogo:
              "https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32",
          defaultVariation: ProductVariation(
            id: 52,
            productId: 32,
            price: 900,
            quantity: 1,
            isDefault: true,
            images: [
              "https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fproduct-variants%2F1695658521113IMG_20230624_173805.jpg?alt=media&token=99ad0718-5295-404d-8da7-6901e7c87ace",
              "https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fproduct-variants%2F1695658521113wallpicture_230925_071310.png?alt=media&token=c943fef9-8fe6-4df3-8068-70eb039f912e",
            ],
            inStock: true,
          ),
        )
      ];

      //when
      when(mockRemoteDataSource.getProducts(page: 1))
          .thenAnswer((realInvocation) async => mockProducts);
      //act
      final result = await repository.getProducts(page: 1);

      //assert
      expect(result.data, isA<List<Product>>());
      expect(result.data, equals(expectedResult));
    });

  
    test('should return response with error when internet is not connect', () async {
      //givin
      
      //when
      when(mockRemoteDataSource.getProducts(page: 1))
          .thenAnswer((realInvocation) async => throw Exception());
      //act
      final result = await repository.getProducts(page: 1);

      // //assert
      expect(result.data, equals(null));
      expect(result, equals(Response<List<Product>>(errorStatus: ErrorStatus())));
    });

  
  });
}
