import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:slash/data/product_repository_imp.dart';
import 'package:slash/domain/models/product.dart';

part 'get_products.g.dart';

@Riverpod(keepAlive: true)
class GetProduct extends _$GetProduct {
  @override
  Future<List<Product>?> build() async {
    final repo = ref.read(repoProvider);
    final result = await repo.getProducts(page: 1);
      return result.data;

  }

  fetchNewPage({required int page}) async {
    final repo = ref.read(repoProvider);
    final result = await repo.getProducts(page: page);
    state = page == 1
        ? AsyncData(result.data)
        : state = AsyncData([...?state.value, ...?result.data]);
  }
}
