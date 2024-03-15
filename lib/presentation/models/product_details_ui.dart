import 'package:slash/domain/models/product_property.dart';
import 'package:slash/domain/models/product_variation.dart';

class ProductDetailsUi {
  final int id;
  final String name;
  final int brandId;
  final String brandLogo;
  final String brandName;
  final List<ProductVariation> variations;
  final List<ProductProperty> availableProperties;

  ProductDetailsUi(
      {required this.id,
      required this.name,
      required this.brandId,
      required this.brandLogo,
      required this.brandName,
      required this.variations,
      required this.availableProperties});
}
