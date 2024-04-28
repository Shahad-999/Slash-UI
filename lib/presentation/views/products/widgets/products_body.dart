import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slash/presentation/controllers/get_products.dart';
import 'package:slash/presentation/models/product_ui.dart';
import 'package:slash/presentation/views/products/widgets/product.dart';
import 'package:flutter_async_hook/flutter_async_hook.dart';

class ProductsBody extends HookConsumerWidget {
  const ProductsBody({super.key, required this.products});

  final List<ProductUi> products;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = useAsyncState();
    final ValueNotifier<int> page = useState<int>(2);
    final controller = useScrollController();
    useEffect((){
      ref.read(getProductProvider.notifier).fetchNewPage(page: page.value);
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          state(ref.read(getProductProvider.notifier).fetchNewPage(page: page.value++));
        }
      });
      return null;
    },[]);

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
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Product(product: products[index]);
              },
            ),
          ),
          if (state.isLoading &&
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
