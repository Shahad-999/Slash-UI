import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/presentation/controllers/get_prodcuts/products_cubit.dart';
import 'package:slash/presentation/models/product_ui.dart';
import 'package:slash/presentation/views/products/widgets/product.dart';

class ProductsBody extends StatefulWidget {
  const ProductsBody({super.key, required this.products});

  final List<ProductUi> products;

  @override
  State<ProductsBody> createState() => _ProductsBodyState();
}

class _ProductsBodyState extends State<ProductsBody> {
  final ScrollController controller = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() async {
      if (controller.position.maxScrollExtent == controller.position.pixels &&
          !isLoading) {
        setState(() {
          isLoading = true;
        });
        await context.read<ProductsCubit>().fetchProducts();
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              controller: controller,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7),
              itemCount: widget.products.length,
              itemBuilder: (context, index) {
                return Product(product: widget.products[index]);
              },
            ),
          ),
          if (isLoading &&
              controller.position.maxScrollExtent == controller.position.pixels)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CircularProgressIndicator(),
            )
        ],
      ),
    );
  }
}
