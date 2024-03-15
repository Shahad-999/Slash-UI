import 'package:slash/data/datasources/remote/models/available_property.dart';
import 'package:slash/data/datasources/remote/models/count_dto.dart';
import 'package:slash/data/datasources/remote/models/product_details_variation.dart';

class ProductDetailsDataDto {
  final int? id;
  final String? name;
  final String? type;
  final String? description;
  final int? brandId;
  final dynamic bostaSizeId;
  final int? productRating;
  final int? estimatedDaysPreparing;
  final CountDto? count;
  final dynamic sizeChart;
  final SubCategory? subCategory;
  final List<ProductDetailsVariationDto>? variations;
  final List<AvailablePropertiesDto>? avaiableProperties;
  final String? brandName;
  final String? brandImage;

  ProductDetailsDataDto({
    this.id,
    this.name,
    this.type,
    this.description,
    this.brandId,
    this.bostaSizeId,
    this.productRating,
    this.estimatedDaysPreparing,
    this.count,
    this.sizeChart,
    this.subCategory,
    this.variations,
    this.avaiableProperties,
    this.brandName,
    this.brandImage,
  });

  ProductDetailsDataDto.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        type = json['type'] as String?,
        description = json['description'] as String?,
        brandId = json['brand_id'] as int?,
        bostaSizeId = json['bosta_size_id'],
        productRating = json['product_rating'] as int?,
        estimatedDaysPreparing = json['estimated_days_preparing'] as int?,
        count = (json['_count'] as Map<String, dynamic>?) != null
            ? CountDto.fromJson(json['_count'] as Map<String, dynamic>)
            : null,
        sizeChart = json['SizeChart'],
        subCategory = (json['subCategory'] as Map<String, dynamic>?) != null
            ? SubCategory.fromJson(json['subCategory'] as Map<String, dynamic>)
            : null,
        variations = (json['variations'] as List?)
            ?.map((dynamic e) =>
            ProductDetailsVariationDto.fromJson(e as Map<String, dynamic>))
            .toList(),
        avaiableProperties = (json['avaiableProperties'] as List?)
            ?.map((dynamic e) =>
                AvailablePropertiesDto.fromJson(e as Map<String, dynamic>))
            .toList(),
        brandName = json['brandName'] as String?,
        brandImage = json['brandImage'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'description': description,
        'brand_id': brandId,
        'bosta_size_id': bostaSizeId,
        'product_rating': productRating,
        'estimated_days_preparing': estimatedDaysPreparing,
        '_count': count?.toJson(),
        'SizeChart': sizeChart,
        'subCategory': subCategory?.toJson(),
        'variations': variations?.map((e) => e.toJson()).toList(),
        'avaiableProperties':
            avaiableProperties?.map((e) => e.toJson()).toList(),
        'brandName': brandName,
        'brandImage': brandImage
      };
}

class SubCategory {
  final int? id;
  final String? name;

  SubCategory({
    this.id,
    this.name,
  });

  SubCategory.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
