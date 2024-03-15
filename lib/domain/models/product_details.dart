import 'package:slash/domain/models/product_variation.dart';

class ProductDetails {
  final int id;
  final String name;
  final int brandId;
  final String brandLogo;
  final String brandName;
  final List<ProductVariation> variations;
  final List<String> availableProperties;

  ProductDetails(
      {required this.id,
      required this.name,
      required this.brandId,
      required this.brandLogo,
      required this.brandName,
      required this.variations,
      required this.availableProperties});
}
