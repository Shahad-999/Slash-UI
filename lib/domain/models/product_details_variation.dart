class ProductDetailsVariation{
  final int id;
  final double price;
  final int quantity;
  final bool isDefault;
  final bool inStock;
  final List<String> images;
  final List<ProductPropertiesValues> productPropertiesValues;

  ProductDetailsVariation( {required this.id,required this.productPropertiesValues, required this.price, required this.quantity, required this.isDefault, required this.images,required this.inStock,});
}

class ProductPropertiesValues {
  final String value;
  final String property;

  ProductPropertiesValues({required this.value, required this.property});

}
