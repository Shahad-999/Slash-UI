class ProductVariation{
  final int id;
  final int productId;
  final double price;
  final int quantity;
  final bool isDefault;
  final bool inStock;
  final List<String> images;

  ProductVariation( {required this.id, required this.productId, required this.price, required this.quantity, required this.isDefault, required this.images,required this.inStock,});
}