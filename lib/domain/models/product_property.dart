class ProductProperty {
  final String property;
  final PropertyType propertyType;
  final List<Values> values;

  ProductProperty(
      {required this.property,
      required this.values,
      required this.propertyType});
}

enum PropertyType {
  color(),
  size(),
  material(),
  unKnown();

}

class Values {
  final String value;
  final int id;

  Values({required this.value, required this.id});
}
