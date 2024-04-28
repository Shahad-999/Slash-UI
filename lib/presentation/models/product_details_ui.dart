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
  final ProductDetailsVariationUi currentVariationUi;

  ProductDetailsUi(
      {required this.id,
      required this.currentVariationUi,
      required this.name,
      required this.brandId,
      required this.brandLogo,
      required this.description,
      required this.brandName,
      required this.variations,
      required this.availableProperties});

  ProductDetailsUi copyWith({
    int? id,
    String? name,
    String? description,
    int? brandId,
    String? brandLogo,
    String? brandName,
    List<ProductDetailsVariationUi>? variations,
    List<ProductProperty>? availableProperties,
    ProductDetailsVariationUi? currentVariationUi,
  }) {
    return ProductDetailsUi(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      brandId: brandId ?? this.brandId,
      brandLogo: brandLogo ?? this.brandLogo,
      brandName: brandName ?? this.brandName,
      variations: variations ?? List.unmodifiable(this.variations),
      availableProperties: availableProperties ?? this.availableProperties,
      currentVariationUi: currentVariationUi ?? this.currentVariationUi,
    );
  }

  static ProductDetailsUi fromModel(ProductDetails product) {
    return ProductDetailsUi(
      id: product.id,
      name: product.name,
      brandId: product.brandId,
      brandLogo: product.brandLogo,
      brandName: product.brandName,
      description: product.description,
      currentVariationUi: ProductDetailsVariationUi.fromModel(
          product.variations.firstWhere((element) => element.isDefault)),
      variations: product.variations
          .map((e) => ProductDetailsVariationUi.fromModel(e))
          .toList(),
      availableProperties: product.availableProperties,
    );
  }
}
