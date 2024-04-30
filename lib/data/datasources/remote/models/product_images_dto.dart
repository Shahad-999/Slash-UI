import 'package:equatable/equatable.dart';

class ProductVarientImages extends Equatable {
  final int? id;
  final String? imagePath;
  final int? productVarientId;
  final String? createdAt;
  final String? updatedAt;

  const ProductVarientImages({
    this.id,
    this.imagePath,
    this.productVarientId,
    this.createdAt,
    this.updatedAt,
  });

  ProductVarientImages.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        imagePath = json['image_path'] as String?,
        productVarientId = json['product_varient_id'] as int?,
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'image_path': imagePath,
        'product_varient_id': productVarientId,
        'createdAt': createdAt,
        'updatedAt': updatedAt
      };

  @override
  List<Object?> get props => [
        id,
        imagePath,
        productVarientId,
        createdAt,
        updatedAt,
      ];
}
