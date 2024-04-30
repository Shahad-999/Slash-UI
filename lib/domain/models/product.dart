import 'package:equatable/equatable.dart';
import 'package:slash/domain/models/product_variation.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final int brandId;
  final String brandLogo;
  final ProductVariation defaultVariation;

  const Product(
      {required this.id,
      required this.name,
      required this.brandLogo,
      required this.brandId,
      required this.defaultVariation});
  @override
  List<Object?> get props => [id, name, brandLogo, brandId, defaultVariation];
}
