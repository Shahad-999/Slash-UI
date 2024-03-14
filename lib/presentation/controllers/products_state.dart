part of 'products_cubit.dart';

class ProductsState {
  final bool isLoading;
  final bool isError;
  final List<ProductUi>? products;
  final int currentPage;

  ProductsState({this.isLoading = false, this.isError = false, this.products,this.currentPage = 1});
}
