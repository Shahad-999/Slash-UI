import 'package:flutter/material.dart';
import 'package:slash/presentation/models/product_details_ui.dart';
import 'package:slash/presentation/models/product_variation_ui.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.currentVariation, required this.details});
  final ProductVariationUi currentVariation;
  final ProductDetailsUi details;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
      ],
    );
  }
}
