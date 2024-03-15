import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash/config/routes.dart';
import 'package:slash/presentation/models/product_ui.dart';
import 'package:slash/utils/ex.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});

  final ProductUi product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> _navToDetails(context),
      child: Column(
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
              InkWell(
                onTap: ()=> _onClickFavorite(context),
                    child:product.isFavorite
                        ?  const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ) : Icon(
                      Icons.favorite_border,
                      color: context.getColors().onBackground,
                    ),
                  )
                 ,
              const SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: ()=> _addToCart(context),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _navToDetails(BuildContext context) {
    GoRouter.of(context).push(AppRouter.productDetailsParam(product.id));
  }

  _onClickFavorite(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Favorite Clicked'),duration: Duration(milliseconds: 500),));
  }

  _addToCart(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Add To Cart Clicked'),duration: Duration(milliseconds: 500)));

  }
}
