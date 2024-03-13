import 'package:flutter/material.dart';
import 'package:slash/presentation/models/product_ui.dart';
import 'package:slash/utils/ex.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});

  final ProductUi product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(fit: BoxFit.fill, product.imageUrl)),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                product.name,
                style: TextStyle(
                    fontSize: 16,
                    color: context.getColors().onBackground,
                    fontWeight: FontWeight.w500),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              backgroundImage: Image.network(
                product.brandLogo,
                fit: BoxFit.cover,
              ).image,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(
              product.price,
              style: TextStyle(
                  fontSize: 14,
                  color: context.getColors().onBackground,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            product.isFavorite
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.favorite_border,
                    color: context.getColors().onBackground,
                  ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
