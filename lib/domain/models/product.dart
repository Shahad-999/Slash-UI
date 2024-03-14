import 'package:slash/domain/models/brand.dart';
import 'package:slash/domain/models/product_variation.dart';

class Product{

  final int id;
  final String name;
  final int brandId;
  final String brandLogo;
  final ProductVariation defaultVariation;

  Product({required this.id, required this.name,  required this.brandLogo,required this.brandId,  required this.defaultVariation});
}