import 'package:flutter/material.dart';
import 'package:slash/domain/models/product_details_variation.dart';
import 'package:slash/presentation/controllers/get_product_details.dart';
import 'package:slash/presentation/models/product_details_ui.dart';
import 'package:slash/presentation/views/product_details/widgets/property_selections.dart';
import 'package:slash/utils/ex.dart';

class ProductData extends StatelessWidget {
  const ProductData(
      {super.key,
      required this.price,
      required this.details,
      required this.selectedProperties,
      required this.provider});

  final String price;
  final ProductDetailsUi details;
  final List<ProductPropertiesValues> selectedProperties;
  final GetProductDetailsProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      details.name,
                      style: TextStyle(
                          color: context.getColors().onBackground,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(price,
                        style: TextStyle(
                            fontSize: 16,
                            color: context.getColors().onBackground,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: context.getColors().background,
                    backgroundImage: Image.network(details.brandLogo).image,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(details.brandName,
                      style: TextStyle(
                          fontSize: 16,
                          color: context.getColors().onBackground,
                          fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
        ),
        ...List.generate(
            details.availableProperties.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: PropertySelection(
                    property: details.availableProperties[index],
                    selectedProperties: selectedProperties,
                    provider: provider,
                  ),
                ))
      ],
    );
  }
}
