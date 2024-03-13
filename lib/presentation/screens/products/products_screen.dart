import 'package:flutter/material.dart';
import 'package:slash/presentation/screens/products/widgets/products_body.dart';
import 'package:slash/utils/ex.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Slash.'
        ),
        centerTitle: true,
        backgroundColor: context.getColors().background,
        surfaceTintColor: context.getColors().background,
        foregroundColor: context.getColors().onBackground,
        titleTextStyle: const TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
      ),
      body: const ProductsBody(),
    );
  }
}
