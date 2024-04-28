import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash/presentation/controllers/get_product_details.dart';
import 'package:slash/presentation/views/product_details/widgets/product_details_body.dart';
import 'package:slash/utils/ex.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final provider = getProductDetailsProvider(id: int.parse(id));
    final product = ref.watch(provider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: context.getColors().background,
        surfaceTintColor: context.getColors().background,
        foregroundColor: context.getColors().onBackground,
        titleTextStyle:
            const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: product.when(data: (data){
        return ProductDetailsBody(
                    details: data!,
                    currentVariation: data.currentVariationUi ,
          provider: provider,
                  );
      },
        error: (err, stack) => const Center(child: Text('Try Agian')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
