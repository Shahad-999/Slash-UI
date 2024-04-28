import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:slash/data/product_repository_imp.dart';
import 'package:slash/presentation/models/product_details_ui.dart';

part 'get_product_details.g.dart';

@Riverpod(keepAlive: true)
class GetProductDetails extends _$GetProductDetails {
  @override
  FutureOr<ProductDetailsUi?> build({required int id}) async {
    final repo = ref.read(repoProvider);
    final result = await repo.getProductDetails(id: id);
    return result.data == null
        ? null
        : ProductDetailsUi.fromModel(result.data!);
  }

  selectVariation(int id) async {
    final product = await future;
    state = AsyncData(product?.copyWith(
        currentVariationUi:
            product.variations.firstWhere((element) => element.id == id)));
  }
}
