import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/config/service_locator.dart';
import 'package:slash/domain/repository.dart';
import 'package:slash/presentation/models/product_details_ui.dart';
import 'package:slash/presentation/models/product_details_variation_ui.dart';
import 'package:slash/presentation/models/product_variation_ui.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductsRepository _productsRepository;

  final String productId;

  ProductDetailsCubit(this.productId)
      : _productsRepository = getIt.get<ProductsRepository>(),
        super(ProductDetailsState(isLoading: true)) {
    _getProduct();
  }

  Future _getProduct() async {
    await _productsRepository
        .getProductDetails(id: int.parse(productId))
        .then((value) {
      if (value.data != null) {
        emit(ProductDetailsState(
            product: ProductDetailsUi.fromModel(value.data!),
            currentVariation: ProductDetailsVariationUi.fromModel(value
                .data!.variations
                .firstWhere((element) => element.isDefault))));
      } else {
        emit(ProductDetailsState(isError: true));
      }
    });
    return;
  }

  void selectVariation(int id) {
    emit(
        ProductDetailsState(
            product:state.product,
            currentVariation:state.product?.variations.firstWhere((element) => element.id ==id)
        )
    );
  }

}
