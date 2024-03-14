import 'package:slash/domain/models/product.dart';

class ProductUi {
  final String name;
  final String price;
  final int id;
  final String imageUrl;
  final bool isFavorite;
  final String brandLogo;

  ProductUi(
      {required this.name, required this.price, required this.id, required this.imageUrl, required this.isFavorite, required this.brandLogo});

  static ProductUi fromModel(Product product) {
    return ProductUi(name: product.name,
        price: '${product.defaultVariation.price}',
        id: product.id,
        imageUrl: product.defaultVariation.images.first,
        isFavorite: false ,
        brandLogo: product.brandLogo);
  }
}

