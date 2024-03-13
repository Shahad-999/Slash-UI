import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{

  ColorScheme getColors(){
    return Theme.of(this).colorScheme;
  }
}