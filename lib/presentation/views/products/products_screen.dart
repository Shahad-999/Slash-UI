import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/presentation/controllers/get_prodcuts/products_cubit.dart';
import 'package:slash/presentation/views/products/widgets/products_body.dart';
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
      body:  BlocProvider(
          create: (BuildContext context) => ProductsCubit(),
          child: BlocBuilder<ProductsCubit,ProductsState>(
              builder:(context,state) {
                if(state.isError) return const Center(child: Text('Try Agian'));
                if(state.isLoading) return const Center(child: CircularProgressIndicator());
               return  ProductsBody(products: state.products ??[],);
              })
      ),
    );
  }
}
