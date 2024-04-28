import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slash/presentation/controllers/get_products.dart';
import 'package:slash/presentation/models/product_ui.dart';
import 'package:slash/presentation/views/products/widgets/products_body.dart';
import 'package:slash/utils/ex.dart';

class ProductsScreen extends HookConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(getProductProvider);

    useEffect(() {
      ref.read(getProductProvider.notifier).build();
      return () {};
    }, []);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Slash.'),
          centerTitle: true,
          backgroundColor: context.getColors().background,
          surfaceTintColor: context.getColors().background,
          foregroundColor: context.getColors().onBackground,
          titleTextStyle:
              const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        body: products.when(
          data: (data) {
            return ProductsBody(
              products: data?.map((e) => ProductUi.fromModel(e)).toList() ?? [],
            );
          },
          error: (err, stack) => const Center(child: Text('Try Agian')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }
}
