import 'package:slash/domain/models/product_details.dart';
import 'package:slash/domain/models/product_property.dart';
import 'package:slash/presentation/models/product_details_variation_ui.dart';

class ProductDetailsUi {
  final int id;
  final String name;
  final String description;
  final int brandId;
  final String brandLogo;
  final String brandName;
  final List<ProductDetailsVariationUi> variations;
  final List<ProductProperty> availableProperties;

  ProductDetailsUi(
      {required this.id,
      required this.name,
      required this.brandId,
      required this.brandLogo,
      required this.description,
      required this.brandName,
      required this.variations,
      required this.availableProperties});

  static ProductDetailsUi fromModel(ProductDetails product) {
    return ProductDetailsUi(
        id: product.id,
        name: product.name,
        brandId: product.brandId,
        brandLogo: product.brandLogo,
        brandName: product.brandName,
        description: product.description,
        variations: product.variations
            .map((e) => ProductDetailsVariationUi.fromModel(e))
            .toList(),
            availableProperties: product.availableProperties);
  }
}
