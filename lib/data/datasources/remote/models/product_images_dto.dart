class ProductVariationsProductVarientImages {


  int? id;
  String? imagePath;
  int? productVarientId;
  String? createdAt;
  String? updatedAt;

  ProductVariationsProductVarientImages({
    this.id,
    this.imagePath,
    this.productVarientId,
    this.createdAt,
    this.updatedAt,
  });
  ProductVariationsProductVarientImages.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    imagePath = json['image_path']?.toString();
    productVarientId = json['product_varient_id']?.toInt();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['image_path'] = imagePath;
    data['product_varient_id'] = productVarientId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
