part of 'product_details_cubit.dart';

class ProductDetailsState {
  final bool isLoading;
  final bool isError;
  final ProductDetailsUi? product;
  final ProductDetailsVariationUi? currentVariation;

  ProductDetailsState({this.isLoading = false, this.isError = false, this.product,this.currentVariation});
}
