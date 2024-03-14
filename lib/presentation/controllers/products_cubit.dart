import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/config/service_locator.dart';
import 'package:slash/domain/repository.dart';
import 'package:slash/presentation/models/product_ui.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepository _productsRepository;

  ProductsCubit()
      : _productsRepository = getIt.get<ProductsRepository>(),
        super(ProductsState(isLoading: true)) {
    fetchProducts();
  }

  Future fetchProducts() async {
    await Future.delayed(const Duration(seconds: 3));
    await _productsRepository.getProducts(page : state.currentPage).then((value) {
      if(state.currentPage ==1){
        emit(ProductsState(
            products: value.data?.map((e) => ProductUi.fromModel(e)).toList(),
            isError: value.errorStatus != null,
            currentPage:  value.errorStatus==null ? state.currentPage+1 : state.currentPage),
        );
      }else{
        emit(ProductsState(
            products: state.products!+(value.data?.map((e) => ProductUi.fromModel(e)).toList() ?? []),
            currentPage:  value.errorStatus==null ? state.currentPage+1 : state.currentPage),
        );
      }
    });
    return;
  }
}
