import 'package:flutter/material.dart';
import 'package:slash/domain/models/product_property.dart';

extension ContextExtension on BuildContext{

  ColorScheme getColors(){
    return Theme.of(this).colorScheme;
  }
}
extension StringEx on String?{
  PropertyType toPropertyType(){
    switch(this){
      case 'material' : return PropertyType.material;
      case 'color' : return PropertyType.color;
      case 'size' : return PropertyType.size;
      default : return PropertyType.unKnown;
    }
  }
}