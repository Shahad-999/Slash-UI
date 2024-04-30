import 'package:equatable/equatable.dart';
import 'package:slash/data/datasources/remote/models/product_images_dto.dart';
import 'package:slash/domain/models/product_details_variation.dart';

class ProductDetailsVariationDto extends Equatable {
  final int? id;
  final int? price;
  final int? quantity;
  final bool? inStock;
  final List<ProductVarientImages>? productVarientImages;
  final List<ProductPropertiesValuesDto>? productPropertiesValues;
  final String? productStatus;
  final bool? isDefault;
  final int? productVariationStatusId;

  const ProductDetailsVariationDto({
    this.id,
    this.price,
    this.quantity,
    this.inStock,
    this.productVarientImages,
    this.productPropertiesValues,
    this.productStatus,
    this.isDefault,
    this.productVariationStatusId,
  });

  ProductDetailsVariationDto.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        price = json['price'] as int?,
        quantity = json['quantity'] as int?,
        inStock = json['inStock'] as bool?,
        productVarientImages = (json['ProductVarientImages'] as List?)
            ?.map((dynamic e) =>
                ProductVarientImages.fromJson(e as Map<String, dynamic>))
            .toList(),
        productPropertiesValues = (json['productPropertiesValues'] as List?)
            ?.map((dynamic e) =>
                ProductPropertiesValuesDto.fromJson(e as Map<String, dynamic>))
            .toList(),
        productStatus = json['productStatus'] as String?,
        isDefault = json['isDefault'] as bool?,
        productVariationStatusId = json['product_variation_status_id'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'quantity': quantity,
        'inStock': inStock,
        'ProductVarientImages':
            productVarientImages?.map((e) => e.toJson()).toList(),
        'productPropertiesValues':
            productPropertiesValues?.map((e) => e.toJson()).toList(),
        'productStatus': productStatus,
        'isDefault': isDefault,
        'product_variation_status_id': productVariationStatusId
      };

  ProductDetailsVariation toModel() {
    return ProductDetailsVariation(
        id: id ?? -1,
        price: price?.toDouble() ?? 0.0,
        quantity: quantity ?? 0,
        isDefault: isDefault ?? true,
        images: productVarientImages
                ?.map((e) => e.imagePath)
                .whereType<String>()
                .toList() ??
            [],
        inStock: inStock ?? true,
        productPropertiesValues: productPropertiesValues
                ?.map((e) => e.toModel())
                .whereType<ProductPropertiesValues>()
                .toList() ??
            []);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        price,
        quantity,
        inStock,
        productVarientImages,
        productPropertiesValues,
        productStatus,
        isDefault,
        productVariationStatusId,
      ];
}

class ProductPropertiesValuesDto extends Equatable {
  final String? value;
  final String? property;

  const ProductPropertiesValuesDto({
    this.value,
    this.property,
  });

  ProductPropertiesValuesDto.fromJson(Map<String, dynamic> json)
      : value = json['value'] as String?,
        property = json['property'] as String?;

  Map<String, dynamic> toJson() => {'value': value, 'property': property};

  ProductPropertiesValues? toModel() {
    if (value != null && property != null) {
      return ProductPropertiesValues(value: value!, property: property!);
    } else {
      return null;
    }
  }

  @override
  List<Object?> get props => [
        value,
        property,
      ];
}
