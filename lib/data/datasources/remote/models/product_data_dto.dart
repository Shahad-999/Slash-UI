import 'package:slash/data/datasources/remote/models/brand_dto.dart';
import 'package:slash/data/datasources/remote/models/product_sub_catagory_dto.dart';
import 'package:slash/data/datasources/remote/models/product_varaiation.dart';
import 'package:slash/domain/models/product.dart';
import 'package:slash/domain/models/product_variation.dart';


class ProductData {

  int? id;
  String? name;
  String? type;
  String? description;
  int? subCategoryId;
  int? brandId;
  String? bostaSizeId;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  int? productRating;
  int? estimatedDaysPreparing;
  BrandDto? brands;
  List<ProductVariationsDto?>? productVariations;
  SubCategories? subCategories;
  String? SizeChart;
  int? notApprovedVariants;

  ProductData({
    this.id,
    this.name,
    this.type,
    this.description,
    this.subCategoryId,
    this.brandId,
    this.bostaSizeId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productRating,
    this.estimatedDaysPreparing,
    this.brands,
    this.productVariations,
    this.subCategories,
    this.SizeChart,
    this.notApprovedVariants,
  });

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    type = json['type']?.toString();
    description = json['description']?.toString();
    subCategoryId = json['sub_category_id']?.toInt();
    brandId = json['brand_id']?.toInt();
    bostaSizeId = json['bosta_size_id']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    deletedAt = json['deletedAt']?.toString();
    productRating = json['product_rating']?.toInt();
    estimatedDaysPreparing = json['estimated_days_preparing']?.toInt();
    brands =
    (json['Brands'] != null) ? BrandDto?.fromJson(json['Brands']) : null;
    if (json['ProductVariations'] != null) {
      final v = json['ProductVariations'];
      final arr0 = <ProductVariationsDto>[];
      v.forEach((v) {
        arr0.add(ProductVariationsDto?.fromJson(v));
      });
      productVariations = arr0;
    }
    subCategories = (json['SubCategories'] != null) ? SubCategories.fromJson(
        json['SubCategories']) : null;
    SizeChart = json['SizeChart']?.toString();
    notApprovedVariants = json['notApprovedVariants']?.toInt();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['description'] = description;
    data['sub_category_id'] = subCategoryId;
    data['brand_id'] = brandId;
    data['bosta_size_id'] = bostaSizeId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['deletedAt'] = deletedAt;
    data['product_rating'] = productRating;
    data['estimated_days_preparing'] = estimatedDaysPreparing;
    if (brands != null) {
      data['Brands'] = brands?.toJson();
    }
    if (productVariations != null) {
      final v = productVariations;
      final arr0 = [];
      v?.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['ProductVariations'] = arr0;
    }
    if (subCategories != null) {
      data['SubCategories'] = subCategories!.toJson();
    }
    data['SizeChart'] = SizeChart;
    data['notApprovedVariants'] = notApprovedVariants;
    return data;
  }

  Product toModel() {
    final defaultVariationDto = productVariations!.firstWhere((
        element) => element?.isDefault == true);
    final defaultVariation = ProductVariation(id: defaultVariationDto?.id ??-1,
        productId: defaultVariationDto?.productId ?? -1,
        price: defaultVariationDto?.price?.toDouble() ?? 0.0,
        quantity: defaultVariationDto?.quantity ?? 0,
        isDefault: true,
        images: defaultVariationDto?.productVarientImages?.map((e) => e?.imagePath ?? '').toList() ??[]);
    return Product(id: id ?? -1,
        name: name ?? '',
        brandLogo: brands?.brandLogoImagePath ?? '',
        brandId: brandId ?? -1,
        defaultVariation:defaultVariation
    );
  }
}