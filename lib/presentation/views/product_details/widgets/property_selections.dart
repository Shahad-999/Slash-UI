import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash/domain/models/product_details_variation.dart';
import 'package:slash/domain/models/product_property.dart';
import 'package:slash/presentation/controllers/get_product_details.dart';
import 'package:slash/utils/ex.dart';

class PropertySelection extends ConsumerWidget {
  const PropertySelection(
      {super.key,
      required this.productId,
      required this.property,
      required this.selectedProperties});

  final ProductProperty property;
  final List<ProductPropertiesValues> selectedProperties;
  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onSelectColor(BuildContext context, int id) {
      ref.read(getProductDetailsProvider(id: productId).notifier)
          .selectVariation(id);
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'Select ${property.property}',
              style: TextStyle(
                  color: context.getColors().onBackground,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        if (property.propertyType == PropertyType.size)
          SizedBox(
            height: 56,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: property.values.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () =>
                        onSelectColor(context, property.values[index].id),
                    splashColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 32,
                      decoration: BoxDecoration(
                          color: selectedProperties
                                      .firstWhere((element) =>
                                          element.property == 'Size')
                                      .value ==
                                  (property.values[index].value)
                              ? context.getColors().primary
                              : Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          property.values[index].value,
                          style: TextStyle(
                              color: selectedProperties
                                          .firstWhere((element) =>
                                              element.property == 'Size')
                                          .value ==
                                      (property.values[index].value)
                                  ? context.getColors().onPrimary
                                  : context.getColors().onBackground,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        if (property.propertyType == PropertyType.material)
          SizedBox(
            height: 56,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: property.values.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () =>
                        onSelectColor(context, property.values[index].id),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 32,
                      decoration: BoxDecoration(
                          color: selectedProperties
                                      .firstWhere((element) =>
                                          element.property == 'Materials')
                                      .value ==
                                  (property.values[index].value)
                              ? context.getColors().primary
                              : Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          property.values[index].value,
                          style: TextStyle(
                              color: selectedProperties
                                          .firstWhere((element) =>
                                              element.property == 'Materials')
                                          .value ==
                                      (property.values[index].value)
                                  ? context.getColors().onPrimary
                                  : context.getColors().onBackground,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        if (property.propertyType == PropertyType.color)
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: property.values.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () =>
                        onSelectColor(context, property.values[index].id),
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: selectedProperties
                                          .firstWhere((element) =>
                                              element.property == 'Color')
                                          .value ==
                                      (property.values[index].value)
                                  ? Colors.white
                                  : context.getColors().primary.withAlpha(90),
                              width: 2),
                          color: Color(int.parse(
                                  property.values[index].value
                                      .replaceAll(RegExp(r'[()#]'), '')
                                      .substring(0),
                                  radix: 16) +
                              0xFF000000)),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
