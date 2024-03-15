import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/presentation/controllers/product_details/product_details_cubit.dart';
import 'package:slash/presentation/views/product_details/widgets/product_details_body.dart';
import 'package:slash/utils/ex.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: context.getColors().background,
        surfaceTintColor: context.getColors().background,
        foregroundColor: context.getColors().onBackground,
        titleTextStyle:
            const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: BlocProvider(
          create: (BuildContext context) => ProductDetailsCubit(id),
          child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
              builder: (context, state) {
            if (state.isError) return const Center(child: Text('Try Agian'));
            if (state.isLoading) return const Center(child: CircularProgressIndicator());
            return ProductDetailsBody(
              details: state.product!,
              currentVariation: state.currentVariation! ,
            );
          })),
    );
  }
}
