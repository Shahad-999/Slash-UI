import 'package:slash/domain/models/product_variation.dart';

class ProductVariationUi {
  final int id;
  final int productId;
  final String price;
  final String quantity;
  final bool isDefault;
  final bool inStock;
  final List<String> images;

  ProductVariationUi(
      {required this.id, required this.productId, required this.price, required this.quantity, required this.isDefault, required this.images, required this.inStock,});

  static ProductVariationUi fromModel(ProductVariation variation) {
    return ProductVariationUi(id: variation.id,
        productId: variation.productId,
        price: 'EGP ${variation.price}',
        quantity: '${variation.quantity}',
        isDefault: variation.isDefault,
        images: variation.images,
        inStock: variation.inStock);
  }
}