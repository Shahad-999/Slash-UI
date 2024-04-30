import 'package:equatable/equatable.dart';

class CountDto extends Equatable {
  final int? productVariations;

  const CountDto({
    this.productVariations,
  });

  CountDto.fromJson(Map<String, dynamic> json)
      : productVariations = json['ProductVariations'] as int?;

  Map<String, dynamic> toJson() => {'ProductVariations': productVariations};

  @override
  List<Object?> get props => [
        productVariations,
      ];
}
