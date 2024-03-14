class SubCategories {


  int? id;
  String? name;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? categoryId;
  String? imagePath;

  SubCategories({
    this.id,
    this.name,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.categoryId,
    this.imagePath,
  });
  SubCategories.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    deletedAt = json['deletedAt']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    categoryId = json['category_id']?.toInt();
    imagePath = json['image_path']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['deletedAt'] = deletedAt;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['category_id'] = categoryId;
    data['image_path'] = imagePath;
    return data;
  }
}
