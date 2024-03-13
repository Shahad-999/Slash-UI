import 'package:flutter/material.dart';
import 'package:slash/presentation/models/product_ui.dart';
import 'package:slash/presentation/screens/products/widgets/product.dart';
import 'package:slash/utils/ex.dart';

class ProductsBody extends StatelessWidget {
  const ProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 40,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7),
        itemCount: 40,
        itemBuilder: (context, index) {
          final product = ProductUi(name: 'Flora Gorgeous Gardenia ',
              price: 'EGP 3000',
              id: 22,
              imageUrl: 'https://firebasestorage.googleapis.com/v0/b/slash-f711b.appspot.com/o/images%2Fbrands%2F1707941326799logan.jpg?alt=media&token=c90cbdd1-d6ee-47b6-aca0-e2bd10fe2696',
              isFavorite: false,
              brandLogo: 'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fbrands%2F1695386914229FB_IMG_1693330052710.jpg?alt=media&token=501cb71f-ed98-4348-b2e8-41c63e272e32","brand_status_id":2,"brand_store_address_id":null,"brand_category_id":4,"deletedAt":null,"createdAt":"2023-09-22T12:48:34.756Z","updatedAt":"2023-12-01T00:00:01.889Z'
          );
          return Product(product: product);
        },
      ),
    );
  }
}
