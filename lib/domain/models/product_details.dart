import 'package:slash/domain/models/product_details_variation.dart';
import 'package:slash/domain/models/product_property.dart';

class ProductDetails {
  final int id;
  final String name;
  final int brandId;
  final String brandLogo;
  final String brandName;
  final List<ProductDetailsVariation> variations;
  final List<ProductProperty> availableProperties;

  ProductDetails(
      {required this.id,
      required this.name,
      required this.brandId,
      required this.brandLogo,
      required this.brandName,
      required this.variations,
      required this.availableProperties});
}
