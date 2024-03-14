import 'package:slash/domain/models/product.dart';
import 'package:slash/domain/models/product_variation.dart';
import 'package:slash/domain/repository.dart';
import 'package:slash/utils/error_status.dart';
import 'package:slash/utils/result.dart';

class ProductRepositoryImp extends ProductsRepository {
  @override
  Future<Result<List<Product>>> getProducts({required int page}) {
    return Future(() => Result(
          data: [
            Product(
              name: 'Flora Gorgeous Gardenia $page$page ',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
            Product(
              name: 'Flora Gorgeous Gardenia $page',
              id: 22,
              defaultVariation: ProductVariation(
                  id: 11,
                  productId: 22,
                  price: 3000,
                  quantity: 12,
                  isDefault: true,
                  images: [
                    'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
                  ]),
              brandId: 22,
              brandLogo:
                  'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z',
            ),
          ],
        ));
  }
}
