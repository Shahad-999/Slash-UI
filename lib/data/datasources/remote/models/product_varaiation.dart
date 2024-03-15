import 'package:slash/data/datasources/remote/models/product_images_dto.dart';
import 'package:slash/data/datasources/remote/models/product_lookup_dto.dart';

class ProductVariationsDto {

  int? id;
  int? productId;
  int? price;
  int? quantity;
  String? warehouseId;
  bool? isDefault;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? productVariationStatusId;
  String? acceptedBy;
  ProductVariationsProductStatusLookups? productStatusLookups;
  List<ProductVarientImages?>? productVarientImages;

  ProductVariationsDto({
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.warehouseId,
    this.isDefault,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.productVariationStatusId,
    this.acceptedBy,
    this.productStatusLookups,
    this.productVarientImages,
  });
  ProductVariationsDto.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    productId = json['product_id']?.toInt();
    price = json['price']?.toInt();
    quantity = json['quantity']?.toInt();
    warehouseId = json['warehouse_id']?.toString();
    isDefault = json['is_default'];
    deletedAt = json['deletedAt']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    productVariationStatusId = json['product_variation_status_id']?.toInt();
    acceptedBy = json['accepted_by']?.toString();
    productStatusLookups = (json['ProductStatusLookups'] != null) ? ProductVariationsProductStatusLookups.fromJson(json['ProductStatusLookups']) : null;
    if (json['ProductVarientImages'] != null) {
      final v = json['ProductVarientImages'];
      final arr0 = <ProductVarientImages>[];
      v.forEach((v) {
        arr0.add(ProductVarientImages.fromJson(v));
      });
      productVarientImages = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['product_id'] = productId;
    data['price'] = price;
    data['quantity'] = quantity;
    data['warehouse_id'] = warehouseId;
    data['is_default'] = isDefault;
    data['deletedAt'] = deletedAt;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['product_variation_status_id'] = productVariationStatusId;
    data['accepted_by'] = acceptedBy;
    if (productStatusLookups != null) {
      data['ProductStatusLookups'] = productStatusLookups!.toJson();
    }
    if (productVarientImages != null) {
      final v = productVarientImages;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['ProductVarientImages'] = arr0;
    }
    return data;
  }
}
