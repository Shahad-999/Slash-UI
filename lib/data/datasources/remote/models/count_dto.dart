class CountDto {
  final int? productVariations;

  CountDto({
    this.productVariations,
  });

  CountDto.fromJson(Map<String, dynamic> json)
      : productVariations = json['ProductVariations'] as int?;

  Map<String, dynamic> toJson() => {'ProductVariations': productVariations};
}
