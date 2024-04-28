import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/presentation/controllers/get_product_details.dart';
import 'package:slash/presentation/models/product_details_ui.dart';
import 'package:slash/presentation/models/product_details_variation_ui.dart';
import 'package:slash/presentation/views/product_details/widgets/images.dart';
import 'package:slash/presentation/views/product_details/widgets/product_data.dart';
import 'package:slash/presentation/views/product_details/widgets/product_description.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody(
      {super.key, required this.currentVariation, required this.details, required this.provider});

  final ProductDetailsVariationUi currentVariation;
  final ProductDetailsUi details;
  final GetProductDetailsProvider provider;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Images(images: currentVariation.images),
        const SizedBox(height: 24,),
        ProductData(
          details: details,
          price: currentVariation.price,
          selectedProperties : currentVariation.productPropertiesValues,
          provider: provider,
        ),
        ProductDescription(description: details.description,),
      ],
    );
  }
}
