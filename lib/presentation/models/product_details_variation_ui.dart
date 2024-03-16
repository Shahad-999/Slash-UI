import 'package:slash/domain/models/product_details_variation.dart';

class ProductDetailsVariationUi {
  final int id;
  final String price;
  final String quantity;
  final bool isDefault;
  final bool inStock;
  final List<String> images;
  final List<ProductPropertiesValues> productPropertiesValues;

  ProductDetailsVariationUi(
      {required this.id,required this.productPropertiesValues, required this.price, required this.quantity, required this.isDefault, required this.images, required this.inStock,});

  static ProductDetailsVariationUi fromModel(ProductDetailsVariation variation) {
    return ProductDetailsVariationUi(id: variation.id,
        productPropertiesValues: variation.productPropertiesValues,
        price: 'EGP ${variation.price}',
        quantity: '${variation.quantity}',
        isDefault: variation.isDefault,
        images: variation.images,
        inStock: variation.inStock);
  }
}